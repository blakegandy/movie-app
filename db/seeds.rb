Genre.create!([
  {name: "Western"},
  {name: "Drama"},
  {name: "Action"},
  {name: "Animated"}
])
Actor.create!([
  {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "male", age: 44, movie_id: 1},
  {first_name: "Johnny", last_name: "Depp", known_for: "Pirates of the Caribbean", gender: "male", age: 57, movie_id: 1},
  {first_name: "Robert", last_name: "Pattinson", known_for: "Twilight", gender: "male", age: 34, movie_id: 3},
  {first_name: "Nathan", last_name: "Fillion", known_for: "Firefly", gender: "male", age: 49, movie_id: 2}
])
Movie.create!([
  {title: "John Wick", year: 2014, plot: "A former hitman goes on a rampage after everything he loves is taken from him by the mob he used to work for.", director: "Chad Stahelski", english: true},
  {title: "Django Unchained", year: 2012, plot: "A slave gets freed by a dentist turned bounty hunter and joins him in a journey through the South to find the man who bought his wife at auction and free her.", director: "Quentin Tarantino", english: true},
  {title: "The Hateful Eight", year: 2015, plot: "A bunch of people in the late 1800's get stuck in a cabin for the winter and try to kill each other.", director: "Quinten Tarantino", english: true},
  {title: "Spirited Away", year: 2001, plot: "A young girl must work at a theme park for spirits to free her and her parents from the spirits' grasp.", director: "Hayao Miyazaki", english: false},
  {title: "Titanic", year: 1997, plot: "A poor kid sneaks onto a rich cruise and flirts with an heiress before dying in frigid water because she was selfish.", director: "James Cameron", english: true}
])
MovieGenre.create!([
  {genre_id: 1, movie_id: 1},
  {genre_id: 4, movie_id: 2},
  {genre_id: 2, movie_id: 3},
  {genre_id: 3, movie_id: 4},
  {genre_id: 1, movie_id: 4}
])
