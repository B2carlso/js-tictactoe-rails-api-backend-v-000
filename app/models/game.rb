class Game < ActiveRecord::Base
  def create
    @game = Game.create(state: ["X", "", "", "", "", "", "", "", ""] )
    render json: @game
  end
end
