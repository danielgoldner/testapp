class StatsController < ApplicationController
  def show
  	@games = Game.all
  end
end
