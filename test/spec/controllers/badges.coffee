'use strict'

describe 'Controller: BadgesCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  BadgesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BadgesCtrl = $controller 'BadgesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
