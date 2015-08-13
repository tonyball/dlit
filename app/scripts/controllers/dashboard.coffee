'use strict'

angular.module('dlitApp')
  .controller 'DashboardCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    $scope.Page = Page
    Page.setTitle 'กระดานหลัก'

    $scope.isStudent = false;
    $scope.isTeacher = true;
