class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
      t.string :company
      t.string :location
      t.string :title
      t.string :description
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :experiences
  end
end
