class RenameDiscsHashToWhatever < ActiveRecord::Migration
  def change
    rename_column :discs, :hash, :sha256_hash
  end
end
