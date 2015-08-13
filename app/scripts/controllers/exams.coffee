'use strict'

angular.module('dlitApp')
  .controller 'ExamsCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    Page.setTitle "คลังข้อสอบ"