class CreateRecruits < ActiveRecord::Migration[6.0]
  def change
    create_table :recruits do |t|
      t.integer :member_num ## 기수
      t.datetime :start_at
      t.datetime :end_at
      t.string :ask1_q
      t.string :ask2_q
      t.string :ask3_q
      t.string :ask4_q
      t.string :ask5_q

      t.timestamps
    end
  end
end
