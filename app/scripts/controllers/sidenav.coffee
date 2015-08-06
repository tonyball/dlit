'use strict'

angular.module('dlitApp')
  .controller 'SidenavCtrl', ($scope, $location) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

   	$scope.isActive = (viewLocation) ->
  	  viewLocation == $location.path()
