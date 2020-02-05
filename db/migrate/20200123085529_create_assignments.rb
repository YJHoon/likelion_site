class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :image
      t.datetime :start_at
      t.datetime :end_at
      t.string :file
      t.timestamps
    end
  end
end
