class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]

  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all.order("created_at DESC")
    @teams = Team.all
    @games = Game.all
    @categories = Category.all
    @events = Event.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
    @categories = Category.all
  end

  # GET /matches/new
  def new
    @match = Match.new
    @teams = Team.all.map{|c| [ c.name, c.id ] }
    @events = Event.all.map{|c| [ c.name, c.id ] }
    @disable_nav = true
  end

  # GET /matches/1/edit
  def edit
    @teams = Team.all.map{|c| [ c.name, c.id ] }
    @events = Event.all.map{|c| [ c.name, c.id ] }
    @disable_nav = true
  end

  # POST /matches
  # POST /matches.json
  def create
    @match = Match.new(match_params)
    @match.team1 = params[:match][:team1]
    @match.team2 = params[:match][:team2]
    @match.event_id = params[:match][:event_id]

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    @match.team1 = params[:match][:team1]
    @match.team2 = params[:match][:team2]
    @match.event_id = params[:match][:event_id]

    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:name, :day, :group, :bestof, :team1, :team2, :event_id, :spoil)
    end
end
