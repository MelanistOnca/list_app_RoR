class ChangeOrdersRealtionships < ActiveRecord::Migration
  def change
    add_reference :entrees, :order, foreign_key: true
    add_reference :sides, :order, foreign_key: true
    add_reference :drinks, :order, foreign_key: true
    add_reference :users, :order, foreign_key: true
  end
end
