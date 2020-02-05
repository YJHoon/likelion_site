class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :url
      t.string :image
      t.string :file
      t.integer :view_count, default: 0
      t.integer :grade, default: 0

      t.timestamps
    end
  end
end
