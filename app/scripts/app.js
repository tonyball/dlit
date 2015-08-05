'use strict';

angular
  .module('dlitApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/dashboard.html',
        controller: 'DashboardCtrl'
      })
      .when('/dashboard', {
        templateUrl: 'views/dashboard.html',
        controller: 'DashboardCtrl'
      })
      .when('/managestudents', {
        templateUrl: 'views/managestudents.html',
        controller: 'ManagestudentsCtrl'
      })
      .when('/studentprogress', {
        templateUrl: 'views/studentprogress.html',
        controller: 'StudentprogressCtrl'
      })
      .when('/activity', {
        templateUrl: 'views/activity.html',
        controller: 'ActivityCtrl'
      })
      .when('/overview', {
        templateUrl: 'views/overview.html',
        controller: 'OverviewCtrl'
      })
      .when('/login', {
        templateUrl: 'views/login.html',
        controller: 'LoginCtrl'
      })
      .when('/register', {
        templateUrl: 'views/register.html',
        controller: 'RegisterCtrl'
      })
      .when('/profile', {
        templateUrl: 'views/profile.html',
        controller: 'ProfileCtrl'
      })
      .when('/subjects', {
        templateUrl: 'views/subjects.html',
        controller: 'SubjectsCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
