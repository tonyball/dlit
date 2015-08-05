'use strict';

angular.module('dlitApp')
  .factory('Page', function () {
    var title = 'กระดานหลัก';
    return {
      title: function() { return title; },
      setTitle: function(newTitle) { title = newTitle; }
    };
  });
