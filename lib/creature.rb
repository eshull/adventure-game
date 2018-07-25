class Creature < ActiveRecord::Base
  belongs_to :rooms

  def self.turn(current_room, user_input)
    talking(current_room, user_input)
  end


  def talking(current_room, user_input)
    word1 = user_input[0]
    word2 = user_input[1]
    if ["talk", "speak", "ask"].include?(word1)
      @creature = Creature.find_by(room_id: current_room.id)
      if @creature == nil
      else
        if @creature == 'Grandpa'
          Event.create({:entry => 'Grandpa says: Have you seen my shoe? It looks like this one (he points at a tea kettle). He stares at you for a moment longer, and then wanders off.'})
          Event.create({:entry => 'Grandpa says: Have you seen my shoe? It looks like this one.'})
          Event.create({:entry => 'Grandpa then points at a tea kettle. He stares at you for a moment longer, and then wanders off.'})
          @creature.update(room_id => nil)
        elsif @creature == 'Troll'
          Event.create({:entry => 'The Troll, who is still blocking the door, looks up at you with its beady eyes, and then slowly tilts its head to the side. You are not sure if it speaks English.'})
        elsif @creature == 'Ghost'
          Event.create({:entry => 'Ghost says: ....oooooo .... woooooo.....  beware of the under-the-bed... wooooooooooo. '})
          Event.create({:entry => 'After another moment of intently staring at you, the Ghost disappears.'})
          @creature.update(room_id => nil)
        end
      end
    end

  # def talking(current_room, user_input)
  #   word1 = user_input[0]
  #   word2 = user_input[1]
  #   if ["talk", "speak", "ask"].include?(word1)
  #     @creature = Creature.find_by(room_id: current_room.id)
  #     if @creature == nil
  #     else
  #       if @creature == 'Grandpa'
  #         Event.create({:entry => 'Grandpa says: Have you seen my shoe? It looks like this one (he points at a tea kettle). He stares at you for a moment longer, and then wanders off.'})
  #         Event.create({:entry => 'Grandpa says: Have you seen my shoe? It looks like this one.'})
  #         Event.create({:entry => 'Grandpa then points at a tea kettle. He stares at you for a moment longer, and then wanders off.'})
  #         @creature.update(room_id => nil)
  #       elsif @creature == 'Troll'
  #         Event.create({:entry => 'The Troll, who is still blocking the door, looks up at you with its beady eyes, and then slowly tilts its head to the side. You are not sure if it speaks English.'})
  #       elsif @creature == 'Ghost'
  #         Event.create({:entry => 'Ghost says: ....oooooo .... woooooo.....  beware of the under-the-bed... wooooooooooo. '})
  #         Event.create({:entry => 'After another moment of intently staring at you, the Ghost disappears.'})
  #         @creature.update(room_id => nil)
  #       end
  #     end
  #   end
  # end

end
