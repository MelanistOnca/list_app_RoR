class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :type
      t.string :name
      # reference to bread
      # reference to protein
      # reference to addOn
      # reference to condiments
      t.decimal :cost, precision: 5, scale: 2

    end
  end
end
