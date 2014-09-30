# This migration comes from spree_quote (originally 20140929151738)
class AddPriceToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :price, :decimal, precision: 8, scale: 2
  end
end
