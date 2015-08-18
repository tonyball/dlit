'use strict'

angular.module('dlitApp')
  .controller 'WatchCtrl', ($scope,Page,$routeParams, $http) ->
    $scope.videos = []
    $scope.private_videos = []
    $scope.classroom_id = $routeParams.classroomId
    $http.get('json/classrooms.json').success (classroom_data) ->
  		for c in classroom_data
    		if $scope.classroom_id == c.code
   				$scope.classroom = c
   				Page.setTitle $scope.classroom.title
    	$http.get('json/videos.json').success (videos_data) ->
    		$http.get('json/private_videos.json').success (private_videos_data) ->
    			for vid in videos_data
    				if $scope.classroom_id == vid.classroom_code
                $scope.videos.push vid
    			for pvid in private_videos_data
    				if $scope.classroom_id == pvid.classroom_code
    					$scope.private_videos.push pvid