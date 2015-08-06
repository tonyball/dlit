'use strict'

describe 'Controller: ManagestudentsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  ManagestudentsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ManagestudentsCtrl = $controller 'ManagestudentsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
