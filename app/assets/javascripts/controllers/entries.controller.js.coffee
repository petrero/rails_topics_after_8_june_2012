RailsTopicsAfter8June2012.EntriesController = Ember.ArrayController.extend
	addEntry: ->
		@pushObject name: @get('newEntryName')
		@set('newEntryName', "")
