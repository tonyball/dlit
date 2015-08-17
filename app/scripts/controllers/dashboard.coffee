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
      return

    $http.get('json/users.json').success (users_data) ->
      $scope.users = users_data

      for u in $scope.users 
        if u.id == '99100'
          $scope.user = u
          break

      if $scope.user.role == '1'
        $scope.isStudent = true
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
                  $scope.std_classrooms.push {'classroom_code': uc.code, 'students': []}
                  $scope.std_classrooms[$scope.std_classrooms.length-1].students.push sic

            return 
          return
      return


    $scope.Page = Page
    Page.setTitle 'กระดานหลัก'


    