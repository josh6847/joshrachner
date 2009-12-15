class CreateInquiries < ActiveRecord::Migration
  def self.up
    create_table :inquiries do |t|
      t.string :name
      t.string :company
      t.string :email
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :inquiries
  end
end
