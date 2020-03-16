class AddAnswersToApply < ActiveRecord::Migration[6.0]
  def change
    add_column :applies, :ask6_a, :string
    add_column :applies, :ask7_a, :string
    add_column :applies, :ask8_a, :string
    add_column :applies, :additional1_a, :integer
    add_column :applies, :additional2_a, :integer
    add_column :applies, :additional3_a, :integer

  end
end
