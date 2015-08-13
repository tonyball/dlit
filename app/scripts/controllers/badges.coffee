'use strict'

angular.module('dlitApp')
  .controller 'BadgesCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    Page.setTitle 'คลังเหรียญ'
