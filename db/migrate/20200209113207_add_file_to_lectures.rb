class AddFileToLectures < ActiveRecord::Migration[6.0]
  def change
    add_column :lectures, :file, :string
  end
end
