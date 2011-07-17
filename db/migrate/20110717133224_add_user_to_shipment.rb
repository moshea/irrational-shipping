class AddUserToShipment < ActiveRecord::Migration
  def self.up
    add_column :shipments, :user_id, :integer
  end

  def self.down
  end
end
