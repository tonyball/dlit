'use strict'

angular.module('dlitApp')
  .controller 'LoginCtrl', ($scope, Page, $rootScope) ->
    $rootScope.user_id = '99100'
    Page.setTitle 'เข้าสู่ระบบ'