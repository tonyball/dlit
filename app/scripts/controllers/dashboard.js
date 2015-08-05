'use strict';

angular.module('dlitApp')
  .controller('DashboardCtrl', function ($scope, Page) {
    $scope.Page = Page;
    Page.setTitle('กระดานหลัก');
  });
