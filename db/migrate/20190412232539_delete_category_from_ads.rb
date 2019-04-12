class DeleteCategoryFromAds < ActiveRecord::Migration[5.2]
  def change
      remove_column :ads, :category
  end
end
