class CreateLinkCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :link_categories do |t|
      t.references :link, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
