class Actor < ApplicationRecord
  validates :first_name, length: {minimum: 2}
  validates :last_name, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}


  Actor.create(first_name: "Nathan", last_name: "Fillion", known_for: "Firefly")
  
  Actor.create(first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock")
end
