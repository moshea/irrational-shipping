class FixShipment < ActiveRecord::Migration
  def self.up
    rename_column :shipments, :country_orign, :country_origin
  end

  def self.down
  end
end
