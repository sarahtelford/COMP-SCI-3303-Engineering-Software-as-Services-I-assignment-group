class PartiesController < ApplicationController
  before_action :set_party, only: %i[ show edit update destroy ]

  def show
    id = params[:id]
    @party = Party.find(id)
  end

  def edit
    id = params[:id]
    @candidate = Candidate.find(id)
  end

  def new
    @party = Party.new
  end

  def update
    respond_to do |format|
      if @party.update(candidate_params)
        format.html { redirect_to @party, notice: "Party was successfully updated." }
        format.json { render :show, status: :ok, location: @party }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @party.errors, status: :unprocessable_entity }
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
    @party = Party.new(party_params)

    respond_to do |format|
      if @party.save
        format.html { redirect_to admin_path, notice: "Party was successfully added." }
        format.json { render :show, status: :created, location: @party }
      else
        format.html { render :new}
        format.json { render json: @party.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @party.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: "Candidate was successfully removed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_party
    @party = Party.find(params[:id])
  end

  def party_params
    params.require(:party).permit(:name, :votes)
  end
end