'use strict'

describe 'Controller: StudentprogressCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'

  StudentprogressCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StudentprogressCtrl = $controller 'StudentprogressCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
