'use strict'

describe 'Controller: TakeexamCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  TakeexamCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TakeexamCtrl = $controller 'TakeexamCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
