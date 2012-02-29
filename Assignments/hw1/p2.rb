class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError if ["R", "S", "P"].index(game[0][1]) == nil
	raise NoSuchStrategyError if ["R", "S", "P"].index(game[1][1]) == nil
	
	wc = Hash.new(0);
	wc[["R","P"]] = 1;
	wc[["P","S"]] = 1;
	wc[["S","R"]] = 1;
	
	winner = wc[[game[0][1], game[1][1]]]
	return(game[winner])
	
end

def rps_tournament_winner(tournament)
	if tournament[0][0].class == String
		return rps_game_winner(tournament)
	else
		results1 = rps_tournament_winner(tournament[0])
		results2 = rps_tournament_winner(tournament[1])
		return rps_tournament_winner([results1,results2])
		
	end
end