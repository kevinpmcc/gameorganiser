class GamesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def new
  end

  def index
    @games = Game.all
  end

  def create
    @game = Game.new(game_params)
    @game.save
    @game.players.new(user_id: current_user.id, game_id: @game.id)
    @game.save
    redirect_to @game
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
    params.require(:game).permit(:title, :time)
  end
end
