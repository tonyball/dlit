'use strict'

angular.module('dlitApp')
  .controller 'ManagestudentsCtrl', ($scope, Page,$http,$routeParams,$rootScope) ->
    Page.setTitle 'จัดการห้องเรียน'
    $scope.students = []
    $scope.classroom = {}
    $scope.classrooms = []
    $scope.user = $rootScope.current_user
    $http.get('json/user_classrooms.json').success (user_classrooms_data) ->
    	$http.get('json/classrooms.json').success (classrooms_data) ->
    		$http.get('json/users.json').success (users_data) ->
    			for cd in classrooms_data
		    		if $scope.user.id = cd.user_id
		    			$scope.classrooms.push cd
		    	$scope.classroom = $scope.classrooms[0]

		    	for ucd in user_classrooms_data
		    		if $routeParams.classroomId == undefined
			    		if ucd.classroom_code == $scope.classrooms[0].code
			    			for ud in users_data
			    				if ucd.user_id == ud.id
			    					$scope.students.push ud
			    	else 
			    		if ucd.classroom_code == $routeParams.classroomId
			    			for ud in users_data
			    				if ucd.user_id == ud.id
			    					$scope.students.push ud

		    	

