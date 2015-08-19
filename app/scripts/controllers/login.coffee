'use strict'

angular.module('dlitApp')
  .controller 'LoginCtrl', ($scope, Page, $rootScope, $http, $location) ->
    $rootScope.user_id = ''
    Page.setTitle 'เข้าสู่ระบบ'
    $scope.username = ''
    $scope.password = ''
    $rootScope.isAuth = false

    $scope.login = ->
    	$http.get('json/users.json').success (users_data) ->
    		for ud in users_data
    			if $scope.username == ud.username
    				if $scope.password == ud.password
    					$rootScope.user_id = ud.id
    					$rootScope.isAuth = true
    					if ud.role == '1'
    						$rootScope.isStudent = true
    						$rootScope.isTeacher = false
    					else
    						$rootScope.isTeacher = true
    						$rootScope.isStudent = false
    					$location.path('/')
    					break
    		if isAuth
    			alert "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง"

