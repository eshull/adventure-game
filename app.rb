require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/room')
require('./lib/exit')
require('./lib/player')
require('./lib/artifact')
require('./lib/creature')
require('./lib/play')
require("pg")
require("pry")

get('/') do
  # @stores_list = Store.all
  erb(:index)
end

post ('/') do
  game = Play.game()
  @room_list = Room.all
  @room_id = @room_list.first.id
  redirect "/room/#{@room_id}"
end




get('/room/:id') do
  @current_room = Room.find(params[:id].to_i)
  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end
  @room_items = Artifact.where(:room_id => params[:id].to_i)
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
    Artifact.unlock_door(@current_room, @player_move)
  end
  erb(:room)
end
