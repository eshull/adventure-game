class Play  < ActiveRecord::Base
  def self.game()
    Artifact.delete_all
    Room.delete_all
    Exit.delete_all
    Event.delete_all
    Room.create({:title => "Dark Basement", :description => "A large, cluttered, and dark space filled with crates and old furniture covered in sheets. There is a broken spot in the wall to the North. Exits are North and East.", :items => nil, :image => '1.svg', :xcoord => 1, :ycoord => 1})
    Room.create({:title => "Wine Cellar", :description => "This room has several large barrels and a few wine racks in it. Exits East and West.", :items => nil, :image => '2.svg', :xcoord => 2, :ycoord => 1})
    Room.create({:title => "Cluttered Hallway", :description => "A passage that leads toward a lighted area. There is a small door to the North. Exits are North and West. THE TROLL WILL GO HERE, BLOCKING THE DOOR EAST, ONCE WE IMPLEMENT", :items => nil, :image => '3.svg', :xcoord => 3, :ycoord => 1})
    Room.create({:title => "Pantry", :description => "A disused pantry filled with long-spoiled supplies and kitchen wares. Exits North, West, and East.", :items => nil, :image => '4.svg', :xcoord => 4, :ycoord => 1})
    Room.create({:title => "Kitchen", :description => "This kitchen appears to have been abandoned in the middle of dinner preparation- various dishes and implements still lie where they were set, the oven door hangs open. Exit is to the West.", :items => nil, :image => '5.svg', :xcoord => 5, :ycoord => 1})
    Room.create({:title => "Unfinished Area", :description => "The hole in the wall leads to an unfinished space below the house. You're getting dirty crawling around in here. There is a hole in the ground to the East. Exits are North, South, East.", :items => nil, :image => '6.svg', :xcoord => 1, :ycoord => 2})
    Room.create({:title => "Cave", :description => "The hole leads to a small residence. You can barely sit up in this space. Exit is to the West.", :items => nil, :image => '7.svg', :xcoord => 2, :ycoord => 2})
    Room.create({:title => "Closet", :description => "The small door leads to this closet space, in the corner is a small ornate locked chest. Exit is to the South.", :items => nil, :image => '8.svg', :xcoord => 3, :ycoord => 2})
    Room.create({:title => "Dining Room", :description => "The table is set for a grand meal. Someone's place setting has been disturbed. You wonder what was for dinner. Exits are to the North, South, and East.", :items => nil, :image => '9.svg', :xcoord => 4, :ycoord => 2})
    Room.create({:title => "Study", :description => "Someone's comfortable workspace. A book lies open on the chair. Exits are to the North and West.", :items => nil, :image => '10.svg', :xcoord => 5, :ycoord => 2})
    Room.create({:title => "Old Well", :description => "The unfinished space leads to an area with what was apparently the house's well at some point, but which most recently seems to have been used as a trash can. It is boarded up, but you can see down into it. Exit is to the South.", :items => nil, :image => '11.svg', :xcoord => 1, :ycoord => 3})
    Room.create({:title => "Attic Staircase", :description => "A narrow and dusty staircase leads almost straight up to the East. You wonder where your climbing gear is. Exits are North and East.", :items => nil, :image => '12.svg', :xcoord => 2, :ycoord => 3})
    Room.create({:title => "Roof", :description => "You are on the roof! You have escaped! Congratulations. However, now you are on the roof. And there is no ladder or easy way down, and it is dark and windy. No direction looks particularly safe... pick a direction to try! Hopefully you will not plummet to your doom. Exits are North, South, East, and West.", :items => nil, :image => '13.svg', :xcoord => 3, :ycoord => 3})
    Room.create({:title => "Library", :description => "Someone had some money. This library is filled with hundreds of books, some of which are locked in glass cabinets. There is a potted plant here which is eyeing you with some curiousity. You re-read that sentence and worry maybe you shouldn't linger here too long. Exit is to the South.", :items => nil, :image => '14.svg', :xcoord => 4, :ycoord => 3})
    Room.create({:title => "Sitting Room", :description => "Nobody is sitting in the sitting room. Thankfully. You would like to sit, too, but everything is dusty and it seems like someone might appear at any moment to shoo you away. Exits are North and South.", :items => nil, :image => '15.svg', :xcoord => 5, :ycoord => 3})
    Room.create({:title => "Large Closet", :description => "The Master Bedroom Closet is dark and cluttered with so many Anne Rice Novel gothy outfits and pointy shoes. it's really hot in here for some reason. There is a small door in the wall under one of the shelves. Exits are North and East.", :items => nil, :image => '16.svg', :xcoord => 1, :ycoord => 4})
    Room.create({:title => "Crawlspace", :description => "This crawlspace is almost completely black. There's a rickety baby carriage here which is too large to have fit in through the door. Nothing spooky about that. Exits are to the West west through a small door and South.", :items => nil, :image => '17.svg', :xcoord => 2, :ycoord => 4})
    Room.create({:title => "Closet Under Stairs", :description => "This tiny closet under the stairs is jammed with brooms. Someone liked their brooms a lot. There is not a single dustpan. These people were odd. Exit is to the East.", :items => nil, :image => '18.svg', :xcoord => 3, :ycoord => 4})
    Room.create({:title => "Stairs", :description => "A wide and welcoming staircase winds up to the second floor. Portraits of the family line the walls, although, someone has glued googly eyes to all of the faces. Exits are North to go up the stairs, West to a closet door, and East.", :items => nil, :image => '19.svg', :xcoord => 4, :ycoord => 4})
    Room.create({:title => "Parlor", :description => "You've always wondered what people used a parlor for. These people liked their stuffed and mounted small game. The walls and tables are filled with rabbits, weasels, marmots, stoats, chipmunks... all their glassy, beady eyes follow you as you explore the room. So far, none of them have moved. Exits are North, South, West.", :items => nil, :image => '20.svg', :xcoord => 5, :ycoord => 4})
    Room.create({:title => "Master Bedroom", :description => "The Master Bedroom is mostly empty. It seems the Lord of the house expired in his bed some decades ago. His toothy grin greets you as you enter the room. Atop the covers, something juts from his clenched right hand. Exits are East and South. No, you cannot just jump out one of the windows.", :items => nil, :image => '21.svg', :xcoord => 1, :ycoord => 5})
    Room.create({:title => "Hallway", :description => "This Hallway connects the upstairs bedrooms- many of the other rooms doors are quite securely locked. Exits are West and East.", :items => nil, :image => '22.svg', :xcoord => 2, :ycoord => 5})
    Room.create({:title => "Bathroom", :description => "There's a bowling ball in the toilet. Other than that, this seems like a normal turn-of-the-century bathroom. The medicine cabinet door is hanging open. Exits are West and East.", :items => nil, :image => '23.svg', :xcoord => 3, :ycoord => 5})
    Room.create({:title => "Bedroom", :description => "This guest bedroom is painted with bloodstains. Whoever did it left the paintbrush behind as well. They did a pretty poor job of making the stains- you were not fooled for a second. Exits are West and South.", :items => nil, :image => '24.svg', :xcoord => 4, :ycoord => 5})
    Room.create({:title => "Foyer", :description => "The foyer is cluttered with debris- you can't get anywhere near the door, so, there's no way out of the house here. There's an old suede jacket on a hook. Exit is to the South.", :items => nil, :image => '25.svg', :xcoord => 5, :ycoord => 5})
    Room.create({:title => "player", :description => "This is the player object. If you are viewing this, stop being naughty, Nick. This exists only so objects can be added to the inventory of the player.", :items => nil, :image => nil, :xcoord => nil, :ycoord => nil})
    Exit.create({:nsew => 'north'})
    Exit.create({:nsew => 'south'})
    Exit.create({:nsew => 'west'})
    Exit.create({:nsew => 'east'})
    room = Room.find_by(title: 'Dark Basement')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Wine Cellar')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Cluttered Hallway')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Pantry')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Kitchen')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Unfinished Area')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Cave')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Closet')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Dining Room')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Study')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Old Well')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Attic Staircase')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Roof')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Library')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Sitting Room')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Large Closet')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Crawlspace')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Closet Under Stairs')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Stairs')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Parlor')
    room.exits << Exit.find_or_create_by(nsew: 'north')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Master Bedroom')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Hallway')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'east')
    room = Room.find_by(title: 'Bathroom')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room = Room.find_by(title: 'Bedroom')
    room.exits << Exit.find_or_create_by(nsew: 'west')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    room = Room.find_by(title: 'Foyer')
    room.exits << Exit.find_or_create_by(nsew: 'south')
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => true, :name => 'desk', :origin => 'Study', :purpose => 'key', :unlock => 'look, search, check, inspect, open', :description => 'a dusty desk covered in paperwork and stationery.'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => true, :obscures => false, :name => 'key', :origin => 'Bedroom', :purpose => 'Bedroom', :unlock => 'use, turn, insert', :description => 'a plain grey skeleton key'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => false, :obscures => false, :name => 'map', :origin => 'Wine Cellar', :purpose => 'waste of time', :unlock => nil, :description => 'a mildly tattered copy of the 1978 Shell Oil Roadmap of Florida. Probably not so helpful. Good luck folding it back up.'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => false, :obscures => true, :name => 'knife', :origin => 'Kitchen', :purpose => 'undecided', :unlock => nil, :description => 'A well used carving knife. Be careful not to hurt yourself with this.'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => true, :obscures => false, :name => 'penny', :origin => 'Old Well', :purpose => 'troll', :unlock => 'penny', :description => 'a tarnished old penny'})
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => true, :name => 'well', :origin => 'Old Well', :purpose => 'penny', :unlock => 'look, search, check, inspect, open', :description => 'a very old well, now mostly filled with trash.'})
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => false, :name => 'book', :origin => 'Study', :purpose => 'undecided', :unlock => nil, :description => 'A copy of the 1923 reprint of the wildly successful Esperanto verion of Wuthering Heights. It\'s open to the section of the story where young Werther and Oscar Wilde decide to build the first flying machine together, but decide to do that later- after they elope.'})
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => true, :name => 'jacket', :origin => 'Foyer', :purpose => 'dagger', :unlock => 'search, check, inspect, open', :description => 'a nicely made suede jacket.'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => true, :obscures => false, :name => 'dagger', :origin => 'Foyer', :purpose => 'foyer', :unlock => nil, :description => 'a shiny silver dagger. This looks like trouble.'})
    Artifact.create({:room_id => nil, :portable => true, :hidden => false, :obscures => false, :name => 'paw', :origin => 'Attic Staircase', :purpose => 'undecided', :unlock => nil, :description => 'a gnarled old monkey\'s paw. You\'re pretty sure making a wish on this is a bad idea.'})
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => false, :name => 'safe', :origin => 'Closet Under Stairs', :purpose => 'full of treasure', :unlock => '3, 1, 4', :description => 'a wall safe'})
    Artifact.create({:room_id => nil, :portable => false, :hidden => false, :obscures => false, :name => 'chest', :origin => 'Closet', :purpose => 'waste of time', :unlock => nil, :description => 'a locked chest. I wonder what is inside?'})
    artifact_room_id_update = Artifact.all
    artifact_room_id_update.each do |artifact|
      room_name = artifact.origin
      room_object = Room.find_by(title: room_name)
      artifact.update(room_id: room_object.id )
    end
    troll_room_id_update = Room.find_by(title: 'Cluttered Hallway')
    oldman_room_id_update = Room.find_by(title: 'Cave')
    ghost_room_id_update = Room.find_by(title: 'Kitchen')
    Creature.create({:room_id => troll_room_id_update.id, :name => 'Troll', :image => 'troll.svg'})
    Creature.create({:room_id => oldman_room_id_update.id, :name => 'Old Man', :image => 'oldman.svg'})
    Creature.create({:room_id => ghost_room_id_update.id, :name => 'Ghost', :image => 'ghost.svg'})
  end
end
