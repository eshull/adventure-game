class AddArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table(:artifacts) do |t|
      t.belongs_to(:rooms, index: true)
      t.column(:hidden, :boolean)
      t.column(:obscures, :boolean)
      t.column(:name, :string)
      t.column(:purpose, :string)
      t.column(:unlock, :string)
      t.timestamps
    end
  end
end
