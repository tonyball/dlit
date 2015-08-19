'use strict'

angular.module('dlitApp')
  .controller 'StudentprogressCtrl', ($scope, Page, $rootScope, $http, $routeParams) ->
    Page.setTitle 'พัฒนาการนักเรียน'