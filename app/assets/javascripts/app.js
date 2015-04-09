'use strict';

/* App Module */

var noteApp = angular.module('noteApp', [
  'ngRoute',
  'notebookControllers',
  'notebookServices'
]);

noteApp.config(['$routeProvider', '$locationProvider', '$httpProvider',
  function($routeProvider, $locationProvider, $httpProvider) {
    $locationProvider.html5Mode(true);
    $routeProvider.
      when('/', {
        templateUrl: 'notebooks/index_view.html',
        controller: 'NotebookIndexCtrl'
      }).
      otherwise({
        redirectTo: '/'
      });
    var csrfToken = $('meta[name=csrf-token]').attr('content');
    $httpProvider.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken;
    // $httpProvider.defaults.headers.post['X-CSRF-TOKEN'] = csrfToken;
    // $httpProvider.defaults.headers.put['X-CSRF-TOKEN'] = csrfToken;
    // $httpProvider.defaults.headers.patch['X-CSRF-TOKEN'] = csrfToken;
    // $httpProvider.defaults.headers.delete['X-CSRF-TOKEN'] = csrfToken; // $httpP...headers doesn't have delete...
}]);
