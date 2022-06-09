class CandidatesController < ApplicationController
  before_action :set_candidate, only: %i[ show edit update destroy ]
  def index
    @candidates = Candidate.all
    @party = Party.all
  end

  def show

  end

  def edit
    id = params[:id]
    @candidate = Candidate.find(id)
  end

  def new
    @candidate = Candidate.newbundle i
  end

  def aboveLine
    @parties = Party.all
  end

  def aboveLineVoting
    vote = params[:vote][:votes].to_i
    id = params[:vote][:id]
    @party = Party.find(id)
    score = 7 - vote + @party.votes
    @party.update(votes: score)
  end

  def belowLine
    @candidates = Candidate.all
  end

  def belowLineVoting
    vote = params[:vote][:votes].to_i
    id = params[:vote][:id]
    @candidate = Candidate.find(id)
    score = 13 - vote + @candidate.votes
    @candidate.update(votes: score)
  end

  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: "Candidate was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def admin
    @candidates = Candidate.all
    @parties = Party.all
  end

  def public
    @candidates = Candidate.all
    @parties = Party.all
  end

  def create
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to admin_path, notice: "Candidate was successfully added." }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new}
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Candidate was successfully removed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_candidate
    @candidate = Candidate.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:name, :party, :birthday, :votes, :id)
  end
end