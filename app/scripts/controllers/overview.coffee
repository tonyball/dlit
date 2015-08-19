'use strict'

angular.module('dlitApp')
  .controller 'OverviewCtrl', ($scope, Page, $http, $routeParams, $rootScope) ->
  	Page.setTitle 'ภาพรวมนักเรียน'
  	$scope.students = []
  	$scope.classroom = {}
  	$scope.classrooms = []
  	$scope.user = $rootScope.current_user
  	$scope.click = -> $('.tooltipped').tooltip delay: 50

  	$http.get('json/user_classrooms.json').success (user_classrooms_data) ->
  		$http.get('json/classrooms.json').success (classrooms_data) ->
  			$http.get('json/users.json').success (users_data) ->
          $http.get('json/user_badges.json').success (user_badges_data) ->
            $http.get('json/badges.json').success (badges_data) ->
              for cd in classrooms_data
                if $scope.user.id = cd.user_id
                  $scope.classrooms.push cd
              $scope.classroom = $scope.classrooms[0]

              for ucd in user_classrooms_data
                if $routeParams.classroomID == undefined
                  if ucd.classroom_code == $scope.classrooms[0].code
                    for ud in users_data
                      if ucd.user_id == ud.id
                        ud.badges = []
                        for ubd in user_badges_data
                          if ud.id == ubd.user_id
                            for bd in badges_data
                              if ubd.badge_id == bd.id
                                ud.badges.push bd
                        $scope.students.push ud
                else
                  if ucd.classroom_code == $scope.classroom[0].code
                    for ud in users_data
                      if ucd.user_id == ud.id
                        ud.badges = []
                        for ubd in user_badges_data
                          if ud.id == ubd.user_id
                            for bd in badges_data
                              if ubd.badge_id == bd.id
                                ud.badges.push bd
                        $scope.students.push ud
