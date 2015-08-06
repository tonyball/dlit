'use strict';

describe('Controller: SidenavCtrl', function () {

  // load the controller's module
  beforeEach(module('dlitApp'));

  var SidenavCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    SidenavCtrl = $controller('SidenavCtrl', {
      $scope: scope
    });
  }));

});
