class AddJoinForExitsRooms < ActiveRecord::Migration[5.2]
  def change
    create_table(:exits_rooms, id: false) do |t|
      t.belongs_to(:exit, index: true)
      t.belongs_to(:room, index: true)
    end
  end
end
