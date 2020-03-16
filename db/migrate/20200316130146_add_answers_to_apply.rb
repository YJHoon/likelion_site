class AddAnswersToApply < ActiveRecord::Migration[6.0]
  def change
    add_column :applies, :ask6_a, :string
    add_column :applies, :ask7_a, :string
    add_column :applies, :ask8_a, :string

  end
end
