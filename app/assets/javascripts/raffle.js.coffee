# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

@RaffleCtrl = ($scope) ->
	$scope.entries = [
		{name: "Larry"}
		{name: "Curly"}
		{name: "Moe"}
	]

	$scope.addEntry = ->
		$scope.entries.push($scope.newEntry)
		$scope.newEntry = {}

	$scope.drawWinner = ->
		entry = $scope.entries[Math.floor(Math.random()*$scope.entries.length)]
		entry.winner = true
	
