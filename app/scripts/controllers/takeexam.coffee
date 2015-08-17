'use strict'

angular.module('dlitApp')
  .controller 'TakeexamCtrl', ($scope, Page, $routeParams, $http) ->
  	$scope.exam = {}
  	$scope.answer_box = []
  	$scope.datetime = new Date()
  	
  	$scope.exam_id = $routeParams.examId;
  	$http.get('json/subjects.json').success (subjects_data) ->
	  	$http.get('json/exams.json').success (exams_data) ->
	    	for ed in exams_data
	    		if $scope.exam_id == ed.code
	    			$scope.exam = ed
	    			Page.setTitle $scope.exam.title
	    	for subj in subjects_data
	    		if $scope.exam.subject_id == subj.id
	   				$scope.exam.subject_name = subj.name
	   		i = 1
	   		while i <= $scope.exam.number_of_question
	   			$scope.answer_box.push i
	   			i++
