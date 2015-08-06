'use strict'

angular.module('dlitApp')
  .factory 'Page', ->
    title = 'กระดานหลัก'
    {
    title: ->
      title
    setTitle: (newTitle) ->
      title = newTitle
      return
    }
