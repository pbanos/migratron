'use strict'

###*
 # @ngdoc function
 # @name Migratron.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the Migratron
###
angular.module 'Migratron'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
