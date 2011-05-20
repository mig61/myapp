class CreateVats < ActiveRecord::Migration
  def self.up
    create_table :vats do |t|
      t.string :code
      t.string :name
      t.decimal :percentage
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :vats
  end
end
