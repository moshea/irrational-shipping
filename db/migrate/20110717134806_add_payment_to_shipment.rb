class AddPaymentToShipment < ActiveRecord::Migration
  def self.up
    add_column :shipments, :paid, :boolean
  end

  def self.down
  end
end
