'use strict'

angular.module('dlitApp')
  .factory 'Page', ->
    # Service logic
    # ...

    meaningOfLife = 42

    # Public API here
    {
      someMethod: ->
        meaningOfLife
    }
