RailsTopicsAfter8June2012.EntriesController = Ember.Controller.extend
	entries: []

	addEntry: ->
		@entries.pushObject name: @get('newEntryName')
		@set('newEntryName', "")
