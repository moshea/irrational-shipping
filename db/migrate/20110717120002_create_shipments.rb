class CreateShipments < ActiveRecord::Migration
  def self.up
    create_table :shipments do |t|
      t.string :country_orign
      t.string :country_dest
      t.string :description
      t.integer :height
      t.integer :width
      t.integer :depth
      t.integer :weight
      t.date :pickup_date
      t.date :delivery_date
      t.timestamps
    end
  end

  def self.down
    drop_table :shipments
  end
end
