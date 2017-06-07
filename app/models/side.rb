class Side < ActiveRecord::Base
  has_many :orders
  
  validates :name, :presence => {:message => "Add_on must have a name"}
  validates :cost, :presence => {:message => "Add_on must have a price"}

end
