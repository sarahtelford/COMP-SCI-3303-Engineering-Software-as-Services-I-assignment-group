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
    @party = Party.all
    @vote_number = Party.vote_number
  end

  def belowLine
    @candidate = Candidate.all
    @candidateVote = Candidate.new
    @vote_number = Candidate.vote_number
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
        format.html { redirect_to root_path, notice: "Candidate was successfully added." }
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
      format.html { redirect_to root_path, notice: "Candidate was successfully destroyed." }
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