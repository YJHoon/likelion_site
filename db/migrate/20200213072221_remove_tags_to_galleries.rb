class RemoveTagsToGalleries < ActiveRecord::Migration[6.0]
  def change
    remove_column :galleries, :tags
  end
end
