notebookControllers = angular.module('notebookControllers', [])
notebookControllers.controller('NotebookIndexCtrl', ['$scope', 'Notebooks'
  ($scope, Notebooks) ->
    $scope.notebooks = Notebooks.query()
    $scope.submit = () ->
      # Notebooks.query()
      # notebook = new Notebooks({title: 'angular'})
      # notebook.$save((data) ->
      #     alert('nyaa')
      # )
      Notebooks.save({title: 'test'}).$promise.then(
        (data) ->
          $scope.notebooks = Notebooks.query()
      )
    $scope.deleteSubmit = () ->
      Notebooks.remove({id: $scope.notebooks[0].id}).$promise.then(
        (data) ->
          $scope.notebooks = Notebooks.query()
      )
])
