'use strict'

angular.module('dlitApp')
  .controller 'ManagestudentsCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'จัดการห้องเรียน'