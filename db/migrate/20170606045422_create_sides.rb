class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.string :name
      t.decimal :cost, precision: 5, scale: 2
    end
  end
end
