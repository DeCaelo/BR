class RenamePasswordToPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    rename_column :moderators, :password, :password_digest
  end
end
