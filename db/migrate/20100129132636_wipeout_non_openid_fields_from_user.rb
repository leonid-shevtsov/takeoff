class WipeoutNonOpenidFieldsFromUser < ActiveRecord::Migration
  def self.up
    remove_column :user, :crypted_password
    remove_column :user, :password_salt
    remove_column :user, :single_access_token
    remove_column :user, :perishable_token
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
