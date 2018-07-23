class AddMapTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:room) do |t|
      t.belongs_to(:exit, index: true)
      t.column(:xcoord, :integer)
      t.column(:ycoord, :integer)
      t.column(:title, :string)
      t.timestamps
    end

    create_table(:exits) do |t|
      t.belongs_to(:room, index: true)
      t.column(:nsew, :string)
      t.timestamps
    end
  end
end
