class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      # reference to entrees included in order
      # reference to sides included in order
      # reference to drinks included in order
      t.boolean :dine_in
      t.string :start_time
      t.string :served_time # also serves for delivered time
      # will probably want to have a hash of the id number as the public order ID
      t.decimal :cost, precision: 5, scale: 2
    end
  end
end
