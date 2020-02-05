class CreateLectures < ActiveRecord::Migration[6.0]
  def change
    create_table :lectures do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :image
      t.integer :view_count
      t.integer :lecture_type

      t.timestamps
    end
  end
end
