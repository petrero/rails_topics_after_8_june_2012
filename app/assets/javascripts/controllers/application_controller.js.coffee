RailsTopicsAfter8June2012.ApplicationController = Ember.Controller.extend
	entries: []

	addEntry: ->
		@entries.pushObject name: @get('newEntryName')
		@set('newEntryName', "")
