'use strict';

describe('Controller: ActivityCtrl', function () {

  // load the controller's module
  beforeEach(module('dlitApp'));

  var ActivityCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ActivityCtrl = $controller('ActivityCtrl', {
      $scope: scope
    });
  }));

  
});
