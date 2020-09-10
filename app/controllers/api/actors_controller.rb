class Api::ActorsController < ApplicationController
  def find_actor
    @actor = Actor.find_by(id: 2)
    render actor.json.jb
  end
end
