'use strict'

angular.module('dlitApp')
  .controller 'DashboardCtrl', ($scope, Page, $http,$rootScope) ->
    $scope.isStudent = false
    $scope.isTeacher = false
    $scope.user_classrooms = []
    $scope.std_classrooms = []
    $scope.openModalById = (id) ->
      modal = document.getElementById('studentlist-' + id)
      $(modal).openModal()

    $http.get('json/users.json').success (users_data) ->
      $scope.users = users_data

      for u in $scope.users 
        if u.id == '50011'
          $scope.user = u
          $scope.user.score = 80
          break

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


    