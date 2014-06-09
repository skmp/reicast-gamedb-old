class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.references :release, index: true
      t.string :name
      t.string :version_type
      t.string :fingerprint

      t.timestamps
    end
  end
end
