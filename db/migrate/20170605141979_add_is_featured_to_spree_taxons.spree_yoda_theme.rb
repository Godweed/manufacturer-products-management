# This migration comes from spree_yoda_theme (originally 20160412101534)
class AddIsFeaturedToSpreeTaxons < ActiveRecord::Migration[5.1]
  def change

    add_column :spree_taxons, :is_featured, :boolean, default: false

  end
end
