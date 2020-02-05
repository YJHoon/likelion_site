class AddTagsToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :tags, :string
  end
end
