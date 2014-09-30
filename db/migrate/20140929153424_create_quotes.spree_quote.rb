# This migration comes from spree_quote (originally 20140929151249)
class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name

      t.timestamps
    end
  end
end
