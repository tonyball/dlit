'use strict'

angular.module('dlitApp')
  .controller 'LoginCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'เข้าสู่ระบบ'