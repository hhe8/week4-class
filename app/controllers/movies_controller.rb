class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def create
    # TO DO: create a new Movie row in the database
    
    redirect_to "/movies"
  end

  def destroy
    @movie = Movie.find_by(:id => params["id"])
    @movie.delete
    redirect_to "/movies"
  end

  def show
    @movie = Movie.find_by(:id => params["id"])
    @movie.download_details
  end

end
