class @CreditCard
	constructor: (number) ->
		@number = number.replace(/[ -]/g, '')

