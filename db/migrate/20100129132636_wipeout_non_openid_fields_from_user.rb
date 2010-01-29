class WipeoutNonOpenidFieldsFromUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :crypted_password
    remove_column :users, :password_salt
    remove_column :users, :single_access_token
    remove_column :users, :perishable_token
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
