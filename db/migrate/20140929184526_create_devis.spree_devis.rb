# This migration comes from spree_devis (originally 20140929184150)
class CreateDevis < ActiveRecord::Migration
  def change
    create_table :devis do |t|
      t.string :name

      t.timestamps
    end
  end
end
