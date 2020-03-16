class AddQuestionsToRecruit < ActiveRecord::Migration[6.0]
  def change
    add_column :recruits, :ask6_q, :string
    add_column :recruits, :ask7_q, :string
    add_column :recruits, :ask8_q, :string
    add_column :recruits, :additional_q1, :string
    add_column :recruits, :additional_q2, :string
    add_column :recruits, :additional_q3, :string
  end
end
