# This migration comes from spree_yoda_theme (originally 20160418070231)
class CreateSpreeBadge < ActiveRecord::Migration[5.1]
  def change
    create_table :spree_badges do |t|

      t.string :name

      t.timestamps
    end
  end
end
