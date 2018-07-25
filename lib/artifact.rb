class Artifact < ActiveRecord::Base
  belongs_to :rooms

  def self.unlock_door (current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    if ["use", "turn", "insert", "give"].include?(word1)
      @inspect_item = Artifact.find_by(name: word2)
      if @inspect_item == nil
      else
        if @inspect_item.purpose == current_room.title
          if current_room.title == 'Cluttered Hallway'
            current_room.exits << Exit.find_or_create_by(nsew: 'east')
            Event.create({:entry => ' !! HOORAY! The troll takes the coin happily and wanders off.'})
            troll = Creature.find_by(room_id: current_room.id)
            troll.update(:room_id => nil)
          elsif current_room.title == 'Bedroom'
            current_room.exits << Exit.find_or_create_by(nsew: 'west')
            Event.create({:entry => ' !! The door is now unlocked.'})
          end
        end
      end
    end
  end

  def self.unhide(current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    if ["look", "search", "check", "inspect", "open"].include?(word1)
      @inspect_item = Artifact.find_by(name: word2)
      if @inspect_item == nil
      else
        if @inspect_item.unlock.include?(word1) && current_room.id == @inspect_item.room_id
          @update_item = Artifact.find_by(name: @inspect_item.purpose)
          @update_item.update(:hidden => false)
          Event.create({:entry => ' !! You discover a ' + @update_item.name + '!'})
        end
      end
    end
  end

  def self.pick_up(current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    @user = Room.all.last
    if ["get", "grab", "take"].include?(word1)
      @inspect_item = Artifact.find_by(name: word2)
      if @inspect_item == nil
      else
        @inspect_item.update(:room_id => @user.id)
        Event.create({:entry => ' !! You pick up the ' + @inspect_item.name + '!'})
      end
    end
  end
end
