class AddAnswersToApply < ActiveRecord::Migration[6.0]
  def change
    add_column :applies, :ask6_a, :string
    add_column :applies, :ask7_a, :string
    add_column :applies, :ask8_a, :string
    add_column :applies, :additional_a1, :integer
    add_column :applies, :additional_a2, :integer
    add_column :applies, :additional_a3, :integer

  end
end
