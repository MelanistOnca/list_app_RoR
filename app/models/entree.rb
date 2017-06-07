class Entree < ActiveRecord::Base
  has_many :users
  has_many :proteins
  has_many :add_ons
  has_many :breads
  has_many :condiments

end
