class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
      t.string :name
      t.references :nielsen_area
      t.decimal :delivery_time

      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end
