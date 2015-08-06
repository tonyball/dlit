'use strict'

angular
  .module('dlitApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/activity',
        templateUrl: 'views/activity.html'
        controller: 'ActivityCtrl'
      .when '/dashboard',
        templateUrl: 'views/dashboard.html'
        controller: 'DashboardCtrl'
      .when '/login',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
      .when '/managestudents',
        templateUrl: 'views/managestudents.html'
        controller: 'ManagestudentsCtrl'
      .when '/overview',
        templateUrl: 'views/overview.html'
        controller: 'OverviewCtrl'
      .when '/profile',
        templateUrl: 'views/profile.html'
        controller: 'ProfileCtrl'
      .when '/register',
        templateUrl: 'views/register.html'
        controller: 'RegisterCtrl'
      .when '/studentprogress',
        templateUrl: 'views/studentprogress.html'
        controller: 'StudentprogressCtrl'
      .when '/subjects',
        templateUrl: 'views/subjects.html'
        controller: 'SubjectsCtrl'
      .otherwise
        redirectTo: '/'

