class AddMentorTypeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mentor_type, :integer
  end
end
