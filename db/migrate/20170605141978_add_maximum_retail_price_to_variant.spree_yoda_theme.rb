# This migration comes from spree_yoda_theme (originally 20160330125655)
class AddMaximumRetailPriceToVariant < ActiveRecord::Migration[5.1]
  def up
    add_column :spree_variants, :maximum_retail_price, :decimal, precision: 8, scale: 2, default: 0
    Spree::Variant.all.each do |variant|
      variant.update_column(:maximum_retail_price, variant.price)
    end
  end

  def down
    remove_column :spree_variants, :maximum_retail_price, :decimal, precision: 8, scale: 2, default: 0
  end

end
