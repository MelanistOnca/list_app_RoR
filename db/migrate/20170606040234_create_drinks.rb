class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.decimal :cost, precision: 5, scale: 2
      t.boolean :alcoholic
    end
  end
end
