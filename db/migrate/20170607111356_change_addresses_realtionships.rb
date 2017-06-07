class ChangeAddressesRealtionships < ActiveRecord::Migration
  # addresses may be related to more than one user
  def change
    add_reference :users, :address, foreign_key: true
  end
end
