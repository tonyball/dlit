'use strict'

angular.module('dlitApp')
  .controller 'SidenavCtrl', ($scope, $location) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

   	$scope.isActive = (viewLocation) ->
   		location = $location.path().split '/'
   		viewLocation == "/"+location[1]
