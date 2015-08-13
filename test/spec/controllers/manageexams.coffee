'use strict'

describe 'Controller: ManageexamsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  ManageexamsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ManageexamsCtrl = $controller 'ManageexamsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
