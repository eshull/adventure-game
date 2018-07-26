class Creature < ActiveRecord::Base
  belongs_to :rooms

  def self.talking(current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    if ["talk", "speak", "ask"].include?(word1)
      @creature = Creature.find_by(room_id: current_room.id)
      if @creature == nil
      else
        if @creature.name == 'Grandpa'
          Event.create({:entry => 'Grandpa says: Have you seen my shoe? It looks like this one.'})
          Event.create({:entry => 'Grandpa then points at a tea kettle. He stares at you for a moment longer, and then wanders off.'})
          @creature.update(:room_id => nil)
        elsif @creature.name == 'Troll'
          Event.create({:entry => 'The Troll, who is still blocking the door, looks up at you with its beady eyes, and then slowly tilts its head to the side. You are not sure if it speaks English.'})
        elsif @creature.name == 'Ghost'
          Event.create({:entry => 'Ghost says: ....oooooo .... woooooo.....  beware of the under-the-bed... wooooooooooo. '})
          Event.create({:entry => 'After another moment of intently staring at you, the Ghost disappears.'})
          @creature.update(:room_id => nil)
        end
      end
    end
  end

  def self.interacting(current_room, user_input)
    word1 = user_input[0].downcase
    word2 = user_input[1].downcase
    if ["hit", "hug", "attack", "punch", "kick"].include?(word1)
      @creature = Creature.find_by(room_id: current_room.id)
      if @creature == nil
      else
        if @creature.name == 'Grandpa'
          Event.create({:entry => 'Grandpa is not amused.'})
        elsif @creature.name == 'Troll'
          Event.create({:entry => 'The Troll looks extremely strong. That is probably a bad idea.'})
        elsif @creature.name == 'Ghost'
          Event.create({:entry => 'As the ghost is non-corporeal, this seems silly. She stares at you as you embarrass yourself.'})
        end
      end
    end
    if ["look"].include?(word1)
      @creature = Creature.find_by(room_id: current_room.id)
      if @creature == nil
      else
        Event.create({:entry => @creature.description})
      end
    end
  end

  def self.present(current_room)
    is_creature = Creature.find_by(room_id: current_room.id)
    if is_creature == nil
    else
      Event.create({:entry => '** There is a ' + is_creature.name.upcase + ' here. **'})
    end
  end

end
