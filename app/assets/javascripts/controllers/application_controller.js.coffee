RailsTopicsAfter8June2012.ApplicationController = Ember.Controller.extend
	addEntry: ->
		alert @get('newEntryName')
		@set('newEntryName', "")
