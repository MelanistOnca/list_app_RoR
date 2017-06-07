class User < ActiveRecord::Base
  has_many :orders
  has_many :addresses
  has_many :entrees, through :orders
  has_many :drinks, through :orders
  has_many :sides, through :orders
  has_many :proteins, through :entrees
  has_many :add_ons, through :entrees
  has_many :breads, through :entrees
  has_many :condiments, through :entrees

  validates :username, :presence => {:message => "User must have a username"}
  validates :password_digest, :presence => {:message => "User must have a password_digest"}
  validates :email_address, :presence => {:message => "User must have a email_address"}
  validates :phone_number, :presence => {:message => "User must have a phone_number"}

end
