'use strict'

angular.module('dlitApp')
  .controller 'DashboardCtrl', ($scope, Page, $http,$rootScope) ->
    $scope.isStudent = false
    $scope.isTeacher = false
    $scope.user_classrooms = []
    $scope.std_classrooms = []
    $scope.user_activities = []  
    $scope.user_scores = []
    $scope.user_badges = []
    $scope.openModalById = (id) ->
      modal = document.getElementById('studentlist-' + id)
      $(modal).openModal()

    $scope.tooltipOver = -> $('.tooltipped').tooltip delay: 50

    $http.get('json/users.json').success (users_data) ->
      $scope.users = users_data

      for u in $scope.users 
        if u.id == '50011'
          $scope.user = u
          break
      $rootScope.current_user = $scope.user

      # student's logics
      if $scope.user.role == '1'
        $scope.isStudent = true
        $http.get('json/classrooms.json').success (classrooms_data) ->
          $scope.classrooms = classrooms_data

          $http.get('json/user_classrooms.json').success (user_classrooms_data) ->
            $scope.user_classrooms = user_classrooms_data
            for uc in $scope.user_classrooms
              if $scope.user.id == uc.user_id
                for c in $scope.classrooms
                  if uc.classroom_id == c.id
                    c.finished = uc.finished
                    $scope.std_classrooms.push c

            $http.get('json/user_activities.json').success (user_activities_data) ->
              for uad in user_activities_data
                if $scope.user.id == uad.user_id
                  $scope.user_activities.push uad 

            $http.get('json/user_scores.json').success (user_scores_data) -> 
              $http.get('json/exercises.json').success (exercises_data) ->
                for us in user_scores_data
                  if $scope.user.id == us.user_id
                    for ed in exercises_data
                      if us.exercise_id == ed.id
                        us.title = ed.title
                        $scope.user_scores.push us
                        
                $scope.user.score = 0
                $scope.user.score += parseInt(s.score) for s in $scope.user_scores

            $http.get('json/user_badges.json').success (user_badges_data) ->
              $http.get('json/badges.json').success (badges_data) ->
                for ubd in user_badges_data
                  if ubd.user_id == $scope.user.id && ubd.show == 1
                    for bd in badges_data
                      if ubd.badge_id == bd.id
                        ubd.name = bd.name
                        ubd.description = bd.description
                        ubd.image = bd.image
                        ubd.group = bd.group
                        $scope.user_badges.push ubd
                $scope.user_show_badges = $scope.user_badges
                over = $scope.user_show_badges.length - 10
                if (over > 0)
                  $scope.user_show_badges = $scope.user_badges[($scope.user_badges.length-10)..$scope.user_badges.length]


      # teacher's logics
      else
        $scope.isTeacher = true
        $http.get('json/classrooms.json').success (classrooms_data) ->
          $scope.classrooms = classrooms_data

          for c in $scope.classrooms
            if c.user_id = '99100'
              $scope.user_classrooms.push c   

          $http.get('json/user_classrooms.json').success (user_classrooms_data) ->
            $scope.std_in_classroom = user_classrooms_data

            for uc in $scope.user_classrooms
              for sic in $scope.std_in_classroom
                if uc.id == sic.classroom_id
                  if $scope.std_classrooms.length == 0
                    $scope.std_classrooms.push {'classroom_code': uc.code, 'students': []}
                    for u in $scope.users
                      if u.id == sic.user_id
                        $scope.std_classrooms[$scope.std_classrooms.length-1].students.push u
                  else
                    for sc in $scope.std_classrooms
                      if sc.classroom_code == uc.code
                        for u in $scope.users
                          if u.id == sic.user_id
                            $scope.std_classrooms[$scope.std_classrooms.length-1].students.push u




    $scope.Page = Page
    Page.setTitle 'กระดานหลัก'


    