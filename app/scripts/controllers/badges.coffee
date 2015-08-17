'use strict'

angular.module('dlitApp')
  .controller 'BadgesCtrl', ($scope, Page, $http, $rootScope) -> 
    Page.setTitle 'คลังเหรียญ'
    $scope.earths = []
    $scope.moons = []
    $scope.blackholes = []
    $scope.suns = []
    $scope.meteorites = []
    $scope.user = $rootScope.current_user

    $http.get('json/badges.json').success (badges_data) ->
    	$scope.badges = badges_data
    	for bd in badges_data
    		if bd.group == 'earth'
    			$scope.earths.push bd
    		else if bd.group == 'moon'
    			$scope.moons.push bd
    		else if bd.group == 'blackhole'
    			$scope.blackholes.push bd
    		else if bd.group == 'sun'
    			$scope.suns.push bd
    		else
    			$scope.meteorites.push bd