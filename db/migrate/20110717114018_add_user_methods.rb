class AddUserMethods < ActiveRecord::Migration
  def self.up
    rename_column :users, :password, :crypted_password
  end

  def self.down
  end
end
