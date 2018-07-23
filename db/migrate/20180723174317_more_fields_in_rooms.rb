class MoreFieldsInRooms < ActiveRecord::Migration[5.2]
  def change
    drop_table(:exits)
    drop_table(:rooms)

    create_table(:exits) do |t|
      t.column(:nsew, :string)
      t.timestamps
    end

    create_table(:rooms) do |t|
      t.column(:xcoord, :integer)
      t.column(:ycoord, :integer)
      t.column(:title, :string)
      t.column(:description, :string)
      t.column(:items, :string)
      t.column(:image, :string)
      t.belongs_to(:exits, index: true)
      t.timestamps
    end

    change_table(:exits) do |t|
      t.belongs_to(:rooms, index: true)
    end
  end
end
