class Nation < ActiveRecord::Base
  has_many :customers
  has_many :sales_people
  validates :name, :presence => true
    
  default_scope :order => 'name'
  scope         :cee,       where(:cee => true)
  scope         :extracee,  where(:cee => false)
  
end
