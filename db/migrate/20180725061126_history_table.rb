class HistoryTable < ActiveRecord::Migration[5.2]
  def change
    create_table(:events) do |t|
      t.column(:room_id, :integer)
      t.column(:entry, :string)
      t.timestamps
    end
  end
end
