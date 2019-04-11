class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :title
      t.string :description
      t.string :company
      t.string :url

      t.timestamps
    end
  end
end
