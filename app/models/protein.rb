class Protein < ActiveRecord::Base
  has_many :entrees
  validates :name, :presence => {:message => "Protein must have a name"}
  #i may want to add a cost to this model?

end
