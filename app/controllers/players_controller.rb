class PlayersController < ApplicationController

  def destroy
    @game = Game.find(params[:game_id])
    player = Player.find(params[:id])
    player.delete
    @game.save
    redirect_to "/games"
  end
end
