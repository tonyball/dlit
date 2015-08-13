'use strict'

describe 'Controller: WatchCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  WatchCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    WatchCtrl = $controller 'WatchCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
