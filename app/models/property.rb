class Property < ActiveRecord::Base
  attr_accessible :address_line_1, :city, :county, :image, :rent
  has_many :lease
  
  
end
