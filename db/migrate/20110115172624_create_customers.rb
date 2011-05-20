class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :company_name
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :district
      t.string :phone_number
      t.string :fax_number
      t.string :email_address
      t.string :website
      t.references :region
      t.references :nation
      t.references :sales_person
      t.references :payment
      t.references :vat

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
