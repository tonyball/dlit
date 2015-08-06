'use strict';

describe('Controller: StudentprogressCtrl', function () {

  // load the controller's module
  beforeEach(module('dlitApp'));

  var StudentprogressCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    StudentprogressCtrl = $controller('StudentprogressCtrl', {
      $scope: scope
    });
  }));

 
});
