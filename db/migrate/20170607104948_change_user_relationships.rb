class ChangeUserRelationships < ActiveRecord::Migration
  # users have many realtionships to orders and may also have many relationships to addresses
  def change
    add_reference :orders, :user, foreign_key: true
    add_reference :addresses, :user, foreign_key: true



  end

  
end
