'use strict'

angular.module('dlitApp')
  .controller 'StudentprogressCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'ติดตามนักเรียน'
