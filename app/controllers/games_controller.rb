class GamesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def new
  end

  def index
    @boardgames = Boardgame.all
    @games = Game.all
  end

  def new
    @boardgames = Boardgame.order('boardgames.title').all
  end

  def create
    puts params
    boardgame = Boardgame.find(game_params[:boardgame_id])
    @game = boardgame.games.create(game_params)
    @game.save
    @game.players.new(user_id: current_user.id, game_id: @game.id)
    @game.save
    redirect_to "/games"
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.players.new(user_id: current_user.id, game_id: @game.id)
    @game.save
    redirect_to "/games"
  end

  private
  def game_params
    params.require(:game).permit(:time, :boardgame_id)
  end
end
