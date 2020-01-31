class CreateComments < ActiveRecord::Migration[6.0]
  def self.up
    create_table :comments do |t|
      t.string :body
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end

  def self.down 
    drop_table :comments
  end
end
