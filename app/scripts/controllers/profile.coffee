'use strict'

angular.module('dlitApp')
  .controller 'ProfileCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'แก้ไขข้อมูลส่วนตัว'
