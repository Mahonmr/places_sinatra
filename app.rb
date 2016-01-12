require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")
require('pry')

get('/') do
  @places = Place.all
  erb(:index)
end

post('/place') do
  location = params.fetch('location')
  place = Place.new(location)
  place.save
  erb(:success)
end
