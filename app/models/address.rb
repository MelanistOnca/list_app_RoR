class Address < ActiveRecord::Base
  has_many :users

  validates :street_line_1, :presence => {:message => "Address must have a street"}
  #street_line_2 is not required
  validates :city, :presence => {:message => "Address must have a city"} #there is probably a loop so that i can have validates x ... "Address must have a ${x}"
  validates :state, :presence => {:message => "Address must have a state"}
  validates :zip_code, :presence => {:message => "Address must have a zip code"}

end
