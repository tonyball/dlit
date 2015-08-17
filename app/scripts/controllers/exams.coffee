'use strict'

angular.module('dlitApp')
  .controller 'ExamsCtrl', ($scope, Page, $http) ->
    Page.setTitle "คลังข้อสอบ"
    $scope.exams = []
    $scope.click = -> $('.collapsible').collapsible accordion: false

    $http.get('json/exams.json').success (exams_data) ->
    	$http.get('json/subjects.json').success (subjects_data) ->
    		for exam in exams_data
    			for subj in subjects_data
    				if exam.subject_id == subj.id
    					exam.subject_name = subj.name
    					$scope.exams.push exam 