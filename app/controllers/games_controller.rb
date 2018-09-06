class GamesController < ApplicationController

  def create
    @game = Game.create(state: ["X", "", "", "", "", "", "", "", ""] )
    render json: @game
  end

  def update
    game = Game.find(params[:id])
    game.update(state: params[:state])
    game.save
    render json: game
  end

end
