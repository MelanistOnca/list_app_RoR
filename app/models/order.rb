class Order < ActiveRecord::Base
  has_many :users
  has_many :entrees
  has_many :drinks
  has_many :sides
  has_many :proteins, through :entrees
  has_many :add_ons, through :entrees
  has_many :breads, through :entrees
  has_many :condiments, through :entrees

  validates :dine_in, :presence => {:message => "Order must be dine in or not"} #no way to distinguish between take-out and delivery. may need to turn this data type to a string
  validates :start_time, :presence => {:message => "Order must have a start time"}
  validates :served_time, :presence => {:message => "Order must have a served time"}
  validates :cost, :presence => {:message => "Order must have a price"}
end
