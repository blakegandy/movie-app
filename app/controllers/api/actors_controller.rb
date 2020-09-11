class Api::ActorsController < ApplicationController
  def find_actor
    @actor = Actor.find_by(id: 2)
    render actor.json.jb
  end

  def find_actor_url
    @selection = params[:id]
    @actor = Actor.find_by(id: @selection)
    render "actor.json.jb"
  end

  def find_actor_query
    @selection = params[:id]
    @actor = Actor.find_by(id: @selection)
    render "actor.json.jb"
  end

  def find_actor_secure
    @selection = params[:id]
    @actor = Actor.find_by(id: @selection)
    render "actor.json.jb"
  end
end
