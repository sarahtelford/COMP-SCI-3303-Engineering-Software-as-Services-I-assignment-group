class VotingController < ApplicationController

  def index
  end

  def show
    id = params[:id]
    @candidate = Candidates.find(id)
  end

  def edit
    @candidate = Candidates.find params[:id]
  end

  def new
    @candidate = Candidates.new
  end

  def create
    @candidate = Candidates.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: "Candidate was successfully added." }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_candidate
    @candidate = Candidates.find(params[:id])
  end

  def candidate_params
    params.require(:candidate).permit(:name, :party, :birthday, :votes)
  end
end