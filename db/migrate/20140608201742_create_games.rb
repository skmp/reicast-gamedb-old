class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :company
      t.string :fingerprint

      t.timestamps
    end
  end
end
