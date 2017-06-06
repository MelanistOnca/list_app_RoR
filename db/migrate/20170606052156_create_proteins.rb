class CreateProteins < ActiveRecord::Migration
  def change
    create_table :proteins do |t|
      t.string :name
    end
  end
end
