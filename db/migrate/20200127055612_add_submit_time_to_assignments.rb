class AddSubmitTimeToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :submit_time, :datetime
  end
end
