class CreateNielsenAreas < ActiveRecord::Migration
  def self.up
    create_table :nielsen_areas do |t|
      t.string :area_code
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :nielsen_areas
  end
end
