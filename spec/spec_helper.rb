ENV['RACK_ENV'] = 'test'
require('rspec')
require('pg')
require('sinatra/activerecord')
require('artifact')
require('creature')
require('play')
require('room')
require('event')
require('player')
require('pry')

RSpec.configure do |config|
  config.after(:each) do

    Artifact.all.each do |artifact|
      artifact.destroy()
    end

    Creature.all.each do |creature|
      creature.destroy()
    end

    Play.all.each do |play|
      play.destroy()
    end

    Room.all.each do |room|
      room.destroy()
    end

    Event.all.each do |event|
      event.destroy()
    end

    Player.all.each do |player|
      player.destroy()
    end



  end
end
