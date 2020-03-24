class AddAnswersColumnToApply < ActiveRecord::Migration[6.0]
  def change
    add_column :applies, :ask9_a, :string
    add_column :applies, :ask10_a, :string
    add_column :applies, :ask6_file, :string
    add_column :applies, :ask7_file, :string
    add_column :applies, :ask8_file, :string
    add_column :applies, :ask9_file, :string
    add_column :applies, :ask10_file, :string
  end
end
