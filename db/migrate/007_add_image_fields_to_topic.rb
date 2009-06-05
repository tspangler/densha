class AddImageFieldsToTopic < ActiveRecord::Migration
  def self.up
    add_column :topics, :parent_id, :integer
    add_column :topics, :content_type, :string
    add_column :topics, :filename, :string
    add_column :topics, :thumbnail, :string
    add_column :topics, :size, :integer
    add_column :topics, :width, :integer
    add_column :topics, :height, :integer
  end

  def self.down
    remove_column :topics, :parent_id, :integer
    remove_column :topics, :content_type, :string
    remove_column :topics, :filename, :string
    remove_column :topics, :thumbnail, :string
    remove_column :topics, :size, :integer
    remove_column :topics, :width, :integer
    remove_column :topics, :height, :integer
  end
end
