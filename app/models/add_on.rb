class Add_On < ActiveRecord::Base
  has_many :entrees
  
  validates :name, :presence => {:message => "Add_on must have a name"}
  validates :cost, :presence => {:message => "Add_on must have a price"}

end
