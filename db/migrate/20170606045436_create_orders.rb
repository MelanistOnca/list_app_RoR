class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      # reference to entrees included in order
      # reference to sides included in order
      # reference to drinks included in order
      t.boolean :dine_in #this may need to be renamed and/or be a string to distinguish between dine-in, take-out, and delivery
      t.string :start_time
      t.string :served_time # also serves for delivered time. and pickup time
      # will probably want to have a hash of the id number as the public order ID
      t.decimal :cost, precision: 5, scale: 2
    end
  end
end
