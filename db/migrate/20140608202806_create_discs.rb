class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.references :version, index: true
      t.string :fingerprint
      t.string :hash

      t.timestamps
    end
  end
end
