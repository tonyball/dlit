'use strict'

angular.module('dlitApp')
  .controller 'WatchCtrl', ($scope,Page,$routeParams, $http, Pagination) ->
    $scope.videos = []
    $scope.private_videos = []
    $scope.classroom_id = $routeParams.classroomId
    $scope.number_of_question = []
    
    i = 0
    n = []
    while i < 27
      n.push i
      i++
    $scope.number_of_question.push n
    i = 0
    n = []
    while i < 21
      n.push i
      i++
    $scope.number_of_question.push n

    $scope.pagination1 = Pagination.getNew(10)
    $scope.pagination1.numPages = Math.ceil($scope.number_of_question[0].length/$scope.pagination1.perPage)
    $scope.pagination2 = Pagination.getNew(10)
    $scope.pagination2.numPages = Math.ceil($scope.number_of_question[1].length/$scope.pagination1.perPage)


    $http.get('json/classrooms.json').success (classrooms_data) ->
      for c in classrooms_data
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

