class CreateSalesPeople < ActiveRecord::Migration
  def self.up
    create_table :sales_people do |t|
      t.string :name
      t.string :address
      t.string :zip
      t.string :city
      t.string :didtrict
      t.string :phone_number
      t.string :fax_number
      t.string :email_address
      t.string :skype
      t.references :region
      t.references :nation

      t.timestamps
    end
  end

  def self.down
    drop_table :sales_people
  end
end
