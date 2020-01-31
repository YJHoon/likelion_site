class RenameImageToAssignment < ActiveRecord::Migration[6.0]
  def change
    rename_column :assignments, :assignment_images, :assignment_image
  end
end
