class ChangeEntreesRealtionships < ActiveRecord::Migration
  def change
    add_reference :breads, :entree, foreign_key: true
    add_reference :proteins, :entree, foreign_key: true
    add_reference :condiments, :entree, foreign_key: true
    add_reference :add_ons, :entree, foreign_key: true
  end
end
