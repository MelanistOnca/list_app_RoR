class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email_address
      t.string :phone_number
      # last_order references the most recently completed order
      # the below two may simply be join tables? dunno that they need to be here.
      # addresses references all associated addresses
      # past_orders references all previous orders
    end
  end
end
