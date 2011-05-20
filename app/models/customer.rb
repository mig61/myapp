class Customer < ActiveRecord::Base
  belongs_to :region
  belongs_to :nation
  belongs_to :sales_person
  belongs_to :payment
  belongs_to :vat
  
  validates :company_name, :presence => true
  validates :address, :presence => true
  validates :zip_code, :presence => true  
  validates :city, :presence => true  
  
  default_scope :order => 'company_name'
  
end
