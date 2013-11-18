class Tenant < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  has_many :lease
  
end
