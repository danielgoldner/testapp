class StatsController < ApplicationController
  def show
  	@games = current_user.games.all
  	@profit = 0
  	@games.each do |game|
  		@profit += (game.buyout - game.buyin)
	end
  end
end
