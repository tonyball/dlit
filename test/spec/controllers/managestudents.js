'use strict';

describe('Controller: ManagestudentsCtrl', function () {

  // load the controller's module
  beforeEach(module('dlitApp'));

  var ManagestudentsCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ManagestudentsCtrl = $controller('ManagestudentsCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(scope.awesomeThings.length).toBe(3);
  });
});
