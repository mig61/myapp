class SalesPerson < ActiveRecord::Base
  belongs_to :region
  belongs_to :nation
  has_many :customers
end
