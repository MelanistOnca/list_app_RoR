class CreateBreads < ActiveRecord::Migration
  def change
    create_table :breads do |t|
      t.string :name
    end
  end
end
