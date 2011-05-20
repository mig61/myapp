class Payment < ActiveRecord::Base
  has_many :customers
end
