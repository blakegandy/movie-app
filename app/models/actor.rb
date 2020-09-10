class Actor < ApplicationRecord
  Actor.create(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")
  
  Actor.create(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")
end
