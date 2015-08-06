'use strict'

describe 'Controller: SidenavCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  SidenavCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SidenavCtrl = $controller 'SidenavCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
