class Condiment < ActiveRecord::Base
  has_many :entrees
  
  validates :name, :presence => {:message => "Condiment must have a name"}

end
