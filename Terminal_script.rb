require "http"

system "clear"
puts "Enter 1 to find an actor."
puts "Enter 2 to display all movies."

input = gets.chomp
if input == "1"
  response = http.get("http://localhost:3000/api/actor_path").parse
  puts response
elsif input == "2"
  response = http.get("http://localhost:3000/api/all_movies_path").parse
  puts response
end