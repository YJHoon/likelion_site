class CreateApplies < ActiveRecord::Migration[6.0]
  def change
    create_table :applies do |t|
      t.references :recruit, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.string :major
      t.string :student_id
      t.string :grade
      t.text :ask1_a
      t.text :ask2_a
      t.text :ask3_a
      t.text :ask4_a
      t.text :ask5_a
      t.string :ask1_file
      t.string :ask2_file
      t.string :ask3_file
      t.string :ask4_file
      t.string :ask5_file


      t.timestamps
    end
  end
end
