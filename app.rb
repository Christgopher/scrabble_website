require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/scrabblepoints') do
  @points = params.fetch('points').scrabble()
  erb(:scrabblepoints)
end
