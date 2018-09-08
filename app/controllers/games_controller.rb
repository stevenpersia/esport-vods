class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all.order("created_at DESC")
    @categories = Category.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @categories = Category.all
  end

  # GET /games/new
  def new
    @game = Game.new
    @matches = Match.all.map{|c| [ c.name, c.id ] }
    @disable_nav = true
  end

  # GET /games/1/edit
  def edit
    @matches = Match.all.map{|c| [ c.name, c.id ] }
    @disable_nav = true
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)
    @game.match_id = params[:game][:match_id]
    @disable_nav = true

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    @game.match_id = params[:game][:match_id]
    @disable_nav = true

    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:name, :gamestart_tw, :match_id, :gamestart_yt, :namestream, :urlstream, :timeyt)
    end
end
