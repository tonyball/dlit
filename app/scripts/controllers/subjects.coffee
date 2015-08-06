'use strict'

angular.module('dlitApp')
  .controller 'SubjectsCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'รายวิชา'
