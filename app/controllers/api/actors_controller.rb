class Api::ActorsController < ApplicationController
  def show
    @actor = Actor.find(params[:id])
    render "show.json.jb"
  end

  def index
   @actors = Actor.all
    render "index.json.jb"
  end

  def create
    @actor = Actor.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for])
    @actor.save
    render "show.json.jb"
  end

  def update
    @actor = Actor.find(params[:id])

    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.save
    render "show.json.jb"
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "The actor was successfully deleted from the database."}
  end
end
