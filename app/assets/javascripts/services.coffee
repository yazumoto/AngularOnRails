notebookServices = angular.module('notebookServices', ['ngResource']);

notebookServices.factory('Notebooks', ['$resource',($resource) ->
  $resource('/notebooks/:id.json')
])
