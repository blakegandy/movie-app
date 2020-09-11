class Api::MoviesController < ApplicationController
  def find_all_movies
    @movies = Movie.all
    render "movies.json.jb"
  end

  def find_movie_url
    @selection = params[:title]
    @movie = Movie.find_by(title: @selection)
    render "movie.json.jb"
  end

  def find_movie_query
    @selection = params[:title]
    @movie = Movie.find_by(title: @selection)
    render "movie.json.jb"
  end

  def find_movie_secure
    @selection = params[:title]
    @movie = Movie.find_by(title: @selection)
    render "movie.json.jb"
  end
end