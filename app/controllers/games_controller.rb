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
    @available_times = AvailableTime.all
  end

  def create
    #puts params
   #puts "BOARDGAMEPARAMS"
    #puts game_params([:boardgame_id])
    #puts "AVAILTIMEPARAMS"
    #puts game_params([:available_time_id]) 
    boardgame = Boardgame.find(game_params[:boardgame_id])
    puts game_params
    @game = boardgame.games.create(game_params)
    @game.save
    @game.start_time = game_params[:start_time]
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
    params.require(:game).permit(:start_time, :boardgame_id)
  end
end
