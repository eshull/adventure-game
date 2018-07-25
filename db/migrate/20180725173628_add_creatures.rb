class AddCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table(:creatures) do |t|
      t.belongs_to(:room, index: true)
      t.column(:name, :string)
      t.column(:image, :string)
      t.timestamps
    end
  end
end
