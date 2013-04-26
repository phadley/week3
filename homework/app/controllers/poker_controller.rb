class PokerController < ApplicationController

def dealpoker
	number = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
	suit = ['Clubs', 'Spades', 'Hearts', 'Diamonds']
	deck = number.product(suit)
	
	pick1 = deck.sample()
	card1 = pick1[0].to_s+ " of " +pick1[1]
	deck.delete(pick1)
	
	pick2 = deck.sample()
	card2 = pick2[0].to_s+ " of " +pick2[1]
	deck.delete(pick2)

	pick3 = deck.sample()
	card3 = pick3[0].to_s+ " of " +pick3[1]
	deck.delete(pick3)

	pick4 = deck.sample()
	card4 = pick4[0].to_s+ " of " +pick4[1]
	deck.delete(pick4)

	pick5 = deck.sample()
	card5 = pick5[0].to_s+ " of " +pick5[1]
	deck.delete(pick5)

	@deal = [card1, card2, card3, card4, card5]
end

end