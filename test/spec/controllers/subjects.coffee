'use strict'

describe 'Controller: SubjectsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  SubjectsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SubjectsCtrl = $controller 'SubjectsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
