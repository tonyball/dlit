'use strict'

describe 'Controller: ExamsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  ExamsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExamsCtrl = $controller 'ExamsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
