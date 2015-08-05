'use strict';

angular.module('dlitApp')
  .controller('SidenavCtrl', function ($scope, $location) {
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
      };
  });