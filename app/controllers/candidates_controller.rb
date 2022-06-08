class CandidatesController < ApplicationController

  def index
    @candidate = Candidate.all
    @party = Parties.all
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
    @party = Parties.all
    @vote_number = Parties.vote_number
  end

  def belowLine
    @candidate = Candidate.all
    @vote_number = Candidate.vote_number
  end


  def create
    @candidate = Candidate.new(

    )

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: "Candidate was successfully added." }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new}
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
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