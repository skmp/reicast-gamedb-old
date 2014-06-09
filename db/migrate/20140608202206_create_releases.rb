class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.references :game, index: true
      t.string :name
      t.boolean :area_e
      t.boolean :area_j
      t.boolean :area_u
      t.string :peripherals
      t.date :release_date
      t.string :fingerprint

      t.timestamps
    end
  end
end
