'use strict'

describe 'Directive: studentprogress', ->

  # load the directive's module
  beforeEach module 'dlitApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<studentprogress></studentprogress>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the studentprogress directive'
