class CreateWishes < ActiveRecord::Migration[6.0]
  def self.up
    create_table :wishes do |t|
      t.references :wishable, polymorphic: true

      t.timestamps
    end
  end

  def self.down 
    drop_table :wishes
  end
end
