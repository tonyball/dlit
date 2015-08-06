'use strict'

angular.module('dlitApp')
  .controller 'ActivityCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'งานนักเรียน'
