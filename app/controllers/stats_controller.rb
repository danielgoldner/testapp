class StatsController < ApplicationController
  def show
  	@games = current_user.games.all
  end
end
