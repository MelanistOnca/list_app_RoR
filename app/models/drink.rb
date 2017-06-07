class Drink < ActiveRecord::Base
  has_many :orders
  
  validates :name, :presence => {:message => "Drink must have a name"}
  validates :cost, :presence => {:message => "Drink must have a price"}
  validates :alcoholic, :presence => {:message => "Drink must be categorized based on alcoholic content"}

end
