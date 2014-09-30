# This migration comes from spree_devis (originally 20140929184254)
class AddAttachmentPlanToDevis < ActiveRecord::Migration
  def self.up
    change_table :devis do |t|
      t.attachment :plan
    end
  end

  def self.down
    remove_attachment :devis, :plan
  end
end
