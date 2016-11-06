class BoardgamesController < ApplicationController

  def index
    @boardgames = Boardgame.all
  end

  def create
    puts params
    Boardgame.create(boardgame_params)
    redirect_to "/games"
  end



  def boardgame_params
    params.require(:game).permit(:title)
  end

end
