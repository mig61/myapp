class Region < ActiveRecord::Base
  belongs_to :nielsen_area
  has_many :customers
  has_many :sales_people
  validates :name, :presence => true
end
