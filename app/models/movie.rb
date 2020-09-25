class Movie < ApplicationRecord
  validates :director, presence: true
  validates :year, numericality: {only_integer: true}
  validates :plot, length: {maximum: 500}

  has_many :actors

  has_many :movie_genres
  has_many :genres, through: :movie_genres
end
