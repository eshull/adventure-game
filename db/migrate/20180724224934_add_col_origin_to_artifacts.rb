class AddColOriginToArtifacts < ActiveRecord::Migration[5.2]
  def change
    drop_table(:artifacts)

    create_table(:artifacts) do |t|
      t.belongs_to(:room, index: true)
      t.column(:hidden, :boolean)
      t.column(:obscures, :boolean)
      t.column(:name, :string)
      t.column(:purpose, :string)
      t.column(:unlock, :string)
      t.column(:description, :string)
      t.column(:portable, :boolean)
      t.column(:origin, :string)
      t.timestamps
    end
  end
end
