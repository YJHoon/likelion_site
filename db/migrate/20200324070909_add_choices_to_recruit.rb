class AddChoicesToRecruit < ActiveRecord::Migration[6.0]
  def change
    add_column :recruits, :ask9_q, :string
    add_column :recruits, :ask10_q, :string
    
    add_column :recruits, :ask1_type, :integer
    add_column :recruits, :ask2_type, :integer
    add_column :recruits, :ask3_type, :integer
    add_column :recruits, :ask4_type, :integer
    add_column :recruits, :ask5_type, :integer
    add_column :recruits, :ask6_type, :integer
    add_column :recruits, :ask7_type, :integer
    add_column :recruits, :ask8_type, :integer
    add_column :recruits, :ask9_type, :integer
    add_column :recruits, :ask10_type, :integer
    add_column :recruits, :ask1_choices, :text
    add_column :recruits, :ask2_choices, :text
    add_column :recruits, :ask3_choices, :text
    add_column :recruits, :ask4_choices, :text
    add_column :recruits, :ask5_choices, :text
    add_column :recruits, :ask6_choices, :text
    add_column :recruits, :ask7_choices, :text
    add_column :recruits, :ask8_choices, :text
    add_column :recruits, :ask9_choices, :text
    add_column :recruits, :ask10_choices, :text
  end
end
