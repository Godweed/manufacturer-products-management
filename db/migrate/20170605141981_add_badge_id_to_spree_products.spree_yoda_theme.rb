# This migration comes from spree_yoda_theme (originally 20160418070354)
class AddBadgeIdToSpreeProducts < ActiveRecord::Migration[5.1]
  def change

    add_column :spree_products, :badge_id, :integer, index: true

  end
end
