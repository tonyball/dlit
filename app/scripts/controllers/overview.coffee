'use strict'

angular.module('dlitApp')
  .controller 'OverviewCtrl', ($scope, Page) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    Page.setTitle 'ภาพรวมนักเรียน'
