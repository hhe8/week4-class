class MoviesController < ApplicationController

  def update
    movie = Movie.find_by(:id => params["id"])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.save
    redirect_to root_url
  end

  def edit
    @movie = Movie.find_by(:id => params["id"])
  end

  def new
    logger.debug Movie.count.to_s
  end

  def create
    movie = Movie.new
    movie.title = params["title"]
    movie.year = params["year"]
    movie.save
    redirect_to root_url # "/"
  end

  def index
    @movies = Movie.all
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
