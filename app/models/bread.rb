class Bread < ActiveRecord::Base
  has_many :entrees
  
  validates :name, :presence => {:message => "Bread must have a name"}

end
