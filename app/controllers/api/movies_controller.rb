class Api::MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    render "show.json.jb"
  end

  def index
   @movies = Movie.all
    render "index.json.jb"
  end

  def create
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    @movie.save
    render "show.json.jb"
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    @movie.save
    render "show.json.jb"
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The film was successfully deleted from the database."}
  end
end