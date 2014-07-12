class StatsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def show
  	@games = current_user.games.order(sort_column + ' ' + sort_direction)
  	@profit = 0
  	
  	@games.each do |game|
  		@profit += (game.buyout - game.buyin)
	end

  end

  private

  def sort_column
	Game.column_names.include?(params[:sort]) ? params[:sort] : "played"
  end

  def sort_direction
  	%w(asc desc).include?(params[:direction]) ? params[:direction] : "asc"
  end

end
