RailsTopicsAfter8June2012.Router.map ->
	@route 'entries', path: '/'

RailsTopicsAfter8June2012.EntriesRoute = Ember.Route.extend
	model: -> RailsTopicsAfter8June2012.Entry.find()
