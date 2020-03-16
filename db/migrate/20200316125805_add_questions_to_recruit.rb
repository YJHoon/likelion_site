class AddQuestionsToRecruit < ActiveRecord::Migration[6.0]
  def change
    add_column :recruits, :ask6_q, :string
    add_column :recruits, :ask7_q, :string
    add_column :recruits, :ask8_q, :string
    add_column :recruits, :additional1_q, :string
    add_column :recruits, :additional2_q, :string
    add_column :recruits, :additional3_q, :string
  end
end
