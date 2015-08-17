'use strict'

angular.module('dlitApp')
  .controller 'DashboardCtrl', ($scope, Page, $http,$rootScope) ->
    $scope.isStudent = false
    $scope.isTeacher = false
    $scope.user_classrooms = []
    $scope.openModalById = (id) ->
      modal = document.getElementById('studentlist-' + id)
      alert(id)
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

          return
      return


    $scope.Page = Page
    Page.setTitle 'กระดานหลัก'


    