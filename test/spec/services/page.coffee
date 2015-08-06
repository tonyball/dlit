'use strict'

describe 'Service: Page', ->

  # load the service's module
  beforeEach module 'dlitApp'

  # instantiate service
  Page = {}
  beforeEach inject (_Page_) ->
    Page = _Page_

  it 'should do something', ->
    expect(!!Page).toBe true
