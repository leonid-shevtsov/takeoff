class AddBackupOpenidToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :backup_openid_identifier, :string
  end

  def self.down
    remove_column :users, :backup_openid_identifier
  end
end
