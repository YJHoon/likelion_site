class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :submission_url
      t.string :submission_image

      t.timestamps
    end
  end
end
