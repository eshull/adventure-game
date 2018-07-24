require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/room')
require('./lib/exit')
require('./lib/player')
require('./lib/artifact')
require('./lib/creature')
require("pg")
require("pry")

get('/') do
  # @stores_list = Store.all
  erb(:index)
end

get('/room/:id') do
  @current_room = Room.find(params[:id].to_i)
  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end
  erb(:room)
end

post('/room/:id') do
  @current_room = Room.find(params[:id].to_i)

  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end
  @room_items = Artifact.where(:room_id => params[:id].to_i)
  if params["player_move"] == nil
  else
    @player_move = params["player_move"].split(' ')
    Artifact.unhide(@player_move)
  end
  erb(:room)
end
