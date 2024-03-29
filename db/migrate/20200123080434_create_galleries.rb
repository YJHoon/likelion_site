class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
