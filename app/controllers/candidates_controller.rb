class CandidatesController < ApplicationController

  def index
    @candidate = Candidate.all
    @party = Party.all
  end

  def show
    id = params[:id]
    @candidate = Candidate.find(id)
  end

  def edit
    @candidate = Candidate.find params[:id]
  end

  def new
    @candidate = Candidate.new
  end

  def aboveLine
    @parties = Party.all
  end

  def aboveLineVoting
    vote = params[:vote][:votes].to_i
    id = params[:vote][:id]
    score = 7 - vote
    @party = Party.find(id)
    @party.update(votes: score)
  end

  def belowLine
    @candidates = Candidate.all
  end

  def belowLineVoting
    vote = params[:vote][:votes].to_i
    id = params[:vote][:id]
    score = 13 - vote
    @candidate = Candidate.find(id)
    @candidate.update(votes: score)
  end

  def admin
    @candidate = Candidate.all
    @party = Party.all
  end

  def public
    @candidate = Candidate.all
    @party = Party.all
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
    params.require(:candidate).permit(:name, :party, :birthday, :votes)
  end
end