class CleanUpTables < ActiveRecord::Migration[5.2]
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
      t.column(:image, :string)
      t.timestamps
    end
  end
end
