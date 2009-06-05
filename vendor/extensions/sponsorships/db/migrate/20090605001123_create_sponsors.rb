class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :name
      t.string :url
      t.string :image
      t.string :image_thumb
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
