ENV['RACK_ENV'] = 'test'
require('rspec')
require('pg')
require('sinatra/activerecord')
require('artifact')
require('creature')
require('play')
require('room')
require('event')
require('exit')
require('player')
require('pry')
require('shoulda-matchers')


# require("bundler/setup")
# Bundler.require(:default, :test)
# set(:root, Dir.pwd())

# require('capybara/rspec')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do



    Play.game

    # Artifact.all.each do |artifact|
    #   artifact.destroy()
    # end
    #
    # Creature.all.each do |creature|
    #   creature.destroy()
    # end
    #
    # Play.all.each do |play|
    #   play.destroy()
    # end
    #
    # Room.all.each do |room|
    #   room.destroy()
    # end
    #
    # Event.all.each do |event|
    #   event.destroy()
    # end
    #
    # Player.all.each do |player|
    #   player.destroy()
    # end



  end
end
