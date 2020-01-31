class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.string :assignment_images
      t.timestamps
    end
  end
end
