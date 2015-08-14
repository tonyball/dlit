'use strict'

angular.module('dlitApp')
  .controller 'WatchCtrl', ($scope,Page,$routeParams) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    Page.setTitle 'ชื่อห้องเรียน'
    $scope.classroomId = $routeParams.classroomId;
