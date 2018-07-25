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
require('./lib/event')
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

  @creatures = []
  unless Creature.find_by(room_id: @current_room.id) == nil
    @creature_lookup = Creature.find_by(room_id: @current_room.id)
    @creatures.push(@creature_lookup)
    Creature.present(@current_room)
  end

  @room_items = Artifact.where(:room_id => params[:id].to_i)
  Event.create({:room_id => @current_room.id, :entry => @current_room.description})
  if @room_items == nil
  else
    @room_items.each do |display|
      if display.hidden == false
          Event.create({:room_id => @current_room.id, :entry => "!! You see a #{display.name} here"})
      end
    end
  end
  if @exits.length == 1
    Event.create({:room_id => @current_room.id, :entry => " - Exit is to the #{@exits[0]}"})
  else
    Event.create({:room_id => @current_room.id, :entry => " - Exits are to the #{@exits.join(', ')}"})
  end
  @events = Event.all()
  erb(:room)
end

post('/room/:id') do
  @current_room = Room.find(params[:id].to_i)
  if params["player_move"] == nil
  else
    @player_move = params["player_move"].split(' ')
    if @player_move.length == 1
      Player.oneword(@current_room, @player_move)
    elsif @player_move.length == 2
      Artifact.unhide(@current_room, @player_move)
      Artifact.unlock_door(@current_room, @player_move)
      Artifact.pick_up(@current_room, @player_move)
      Creature.turn(@current_room, @player_move)
    elsif @player_move.length > 2
      Event.create({:room_id => @current_room.id, :entry => "All commands are 1 or 2 words, use 'commands' to see a list of examples."})
    end
  end
  @exits = []
  @current_room.exits.each do |frog|
    @exits.push(frog.nsew)
  end

  @creatures = []
  unless Creature.find_by(room_id: @current_room.id) == nil
    @creature_lookup = Creature.find_by(room_id: @current_room.id)
    @creatures.push(@creature_lookup)
    Creature.present(@current_room)
  end

  @room_items = Artifact.where(:room_id => params[:id].to_i)
  Event.create({:room_id => @current_room.id, :entry => @current_room.description})

  if @room_items == nil
  else
    @room_items.each do |display|
      if display.hidden == false
          Event.create({:room_id => @current_room.id, :entry => "!! You see a #{display.name} here"})
      end
    end
  end

  if @exits.length == 1
    Event.create({:room_id => @current_room.id, :entry => " - Exit is to the #{@exits[0]}"})
  else
    Event.create({:room_id => @current_room.id, :entry => " - Exits are to the #{@exits.join(', ')}"})
  end
  @events = Event.all()
  erb(:room)
end
