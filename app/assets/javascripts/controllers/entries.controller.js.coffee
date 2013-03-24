RailsTopicsAfter8June2012.EntriesController = Ember.ArrayController.extend
	addEntry: ->
		RailsTopicsAfter8June2012.Entry.createRecord(name: @get('newEntryName'))
		@set('newEntryName', "")

	drawWinner: ->
		@setEach('highlight', false)
		pool = @rejectProperty('winner')
		if pool.length > 0
			entry = pool[Math.floor(Math.random()*pool.length)]
			entry.set('winner', true)
			entry.set('highlight', true)
			@get('store').commit()

	allWinners: (->
		@everyProperty('winner')
	).property('@each.winner')
