'use strict'

angular.module('dlitApp')
  .controller 'TakeexamCtrl', ($scope, Page, $routeParams) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    Page.setTitle 'ชื่อข้อสอบ'
    $scope.examId = $routeParams.examId;
