'use strict'

angular.module('dlitApp')
  .controller 'MainCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle ''
