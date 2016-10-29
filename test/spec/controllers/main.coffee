'use strict'

describe 'Controller: MainCtrl', ->

  # load the controller's module
  beforeEach module 'Migratron'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should have a default Therapy order list with 6 elements', ->
    expect(scope.defaultTherapyOrder.length).toBe 6
