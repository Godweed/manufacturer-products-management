# This migration comes from import_products (originally 20111118225054)
class RenameProductImportsTableToSpreeProductImports < ActiveRecord::Migration[5.1]
  def change
    rename_table :product_imports, :spree_product_imports
	end
end
