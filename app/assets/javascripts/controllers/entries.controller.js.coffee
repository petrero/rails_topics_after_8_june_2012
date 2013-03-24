RailsTopicsAfter8June2012.EntriesController = Ember.ArrayController.extend
	entries: []

	addEntry: ->
		@entries.pushObject name: @get('newEntryName')
		@set('newEntryName', "")
