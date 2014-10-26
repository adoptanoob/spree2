# This migration comes from spree_devis (originally 20141026134451)
class CreateDevis < ActiveRecord::Migration
  def change
    create_table :devis do |t|
      t.string :name
      t.string :plan_url

      t.timestamps
    end
  end
end
