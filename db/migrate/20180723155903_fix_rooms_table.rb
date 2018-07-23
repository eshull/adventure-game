class FixRoomsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :room

    create_table(:rooms) do |t|
      t.belongs_to(:exit, index: true)
      t.column(:xcoord, :integer)
      t.column(:ycoord, :integer)
      t.column(:title, :string)
      t.timestamps
    end
  end
end
