describe "CreditCard", ->
	it "strips out spaces and dashes from number", ->
		card = new CreditCard("1 2-3")
		expect(card.number).toBe("123")

	it "validates number using mod 10", -> 
		validCard = new CreditCard("4111-1111-1111 1111")
		invalidCard = new CreditCard("4111111111111112")
		expect(validCard.validNumber()).toBeTruthy()
		expect(invalidCard.validNumber()).toBeFalsy()
	
