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
      .when '/dashboard',
        templateUrl: 'views/dashboard.html'
        controller: 'DashboardCtrl'
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
      .when '/badges',
        templateUrl: 'views/badges.html'
        controller: 'BadgesCtrl'
      .when '/exams',
        templateUrl: 'views/exams.html'
        controller: 'ExamsCtrl'
      .when '/exams/:examId',
        templateUrl: 'views/takeexam.html'
        controller: 'TakeexamCtrl'
      .when '/watch/:classroomId',
        templateUrl: 'views/watch.html'
        controller: 'WatchCtrl'
      .when '/manageexams',
        templateUrl: 'views/manageexams.html'
        controller: 'ManageexamsCtrl'
      .otherwise
        redirectTo: '/dashboard'

