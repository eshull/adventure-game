class Artifact < ActiveRecord::Base
  belongs_to :rooms

  def self.unlock_door (current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    @inspect_item = Artifact.find_by(name: word2)
    if @inspect_item == nil
    else
      if @inspect_item.unlock.include?(word1)
        if @inspect_item.purpose == current_room.title
          if current_room.name == 'Cluttered Hall'
            current_room.exits << Exit.find_or_create_by(nsew: 'east')
          elsif current_room.name == 'Bedroom'
            current_room.exits << Exit.find_or_create_by(nsew: 'west')
          end
        end
      end
    end
  end

  def self.unhide(user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    @inspect_item = Artifact.find_by(name: word2)
    if @inspect_item == nil
    else
      if @inspect_item.unlock.include?(word1)
        @update_item = Artifact.find_by(name: @inspect_item.purpose)
        @update_item.update(:hidden => false)
      end
    end
  end
end
