'use strict'

angular.module('dlitApp')
  .controller 'ManageexamsCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    Page.setTitle 'จัดการข้อสอบ'