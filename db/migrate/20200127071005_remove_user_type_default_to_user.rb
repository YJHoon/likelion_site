class RemoveUserTypeDefaultToUser < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :user_type, nil
  end
end
