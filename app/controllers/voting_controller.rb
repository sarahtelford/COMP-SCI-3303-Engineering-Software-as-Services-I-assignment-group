class VotingController < ApplicationController
  # before_action :set_movie, only: %i[ show edit update destroy ]

  # GET /movies or /movies.json
  # def index
  #   @all_ratings = Movie.all_ratings
  #
  #   session[:ratings] = @ratings = params[:ratings].try(:keys) || session[:ratings] || @all_ratings
  #   session[:sort] = @sort = params[:sort] || session[:sort]
  #
  #   if @sort != params[:sort] || @ratings != params[:ratings]
  #     redirect_to movies_path(sort: @sort, ratings: @ratings)
  #   else
  #     @movies = Movie.where(rating: @ratings).order(@sort)
  #   end
  # end
  #
  # # GET /movies/1 or /movies/1.json
  # def show
  # end
  #
  #
  # def search
  #   @similar_movies = Movie.find_by_title(params[:title])
  #   if @similar_movies.nil?
  #     redirect_to root_url, alert: "'#{params[:title]}' has no director"
  #   end
  #   @movie = Movie.find_by(title: params[:title])
  # end
  #
  # # GET /movies/new
  # def new
  #   @movie = Movie.new
  # end
  #
  # # GET /movies/1/edit
  # def edit
  # end
  #
  # # POST /movies or /movies.json
  # def create
  #   @movie = Movie.new(movie_params)
  #
  #   respond_to do |format|
  #     if @movie.save
  #       format.html { redirect_to @movie, notice: "Movie was successfully created." }
  #       format.json { render :show, status: :created, location: @movie }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @movie.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /movies/1 or /movies/1.json
  # def update
  #   respond_to do |format|
  #     if @movie.update(movie_params)
  #       format.html { redirect_to @movie, notice: "Movie was successfully updated." }
  #       format.json { render :show, status: :ok, location: @movie }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @movie.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /movies/1 or /movies/1.json
  # def destroy
  #   @movie.destroy
  #   respond_to do |format|
  #     format.html { redirect_to movies_url, notice: "Movie was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end
  #
  # private
  # # Use callbacks to share common setup or constraints between actions.
  # def set_movie
  #   @movie = Movie.find(params[:id])
  # end
  #
  # # Only allow a list of trusted parameters through.
  # def movie_params
  #   params.require(:movie).permit(:title, :rating, :description, :release_date, :director)
  # end
end