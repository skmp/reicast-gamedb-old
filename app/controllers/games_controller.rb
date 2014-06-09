class GamesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  before_action :set_game, only: [:edit, :update, :show, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "Game saved successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
    def game_params
      params[:game].permit! #(:name, :company, :fingerprint, releases_attributes: [:name, :game_id, :_destroy] )
    end

    def set_game
      @game = Game.find(params[:id])
    end
end
