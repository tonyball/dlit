'use strict';

describe('Controller: SubjectsCtrl', function () {

  // load the controller's module
  beforeEach(module('dlitApp'));

  var SubjectsCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    SubjectsCtrl = $controller('SubjectsCtrl', {
      $scope: scope
    });
  }));


});
