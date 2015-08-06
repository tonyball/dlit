'use strict'

angular.module('dlitApp')
  .controller 'RegisterCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'ลงทะเบียน'
