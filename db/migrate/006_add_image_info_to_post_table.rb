class AddImageInfoToPostTable < ActiveRecord::Migration
  def self.up
    add_column :posts, :parent_id, :integer
    add_column :posts, :content_type, :string
    add_column :posts, :filename, :string
    add_column :posts, :thumbnail, :string
    add_column :posts, :size, :integer
    add_column :posts, :width, :integer
    add_column :posts, :height, :integer
  end

  def self.down
    remove_column :posts, :parent_id, :integer
    remove_column :posts, :content_type, :string
    remove_column :posts, :filename, :string
    remove_column :posts, :thumbnail, :string
    remove_column :posts, :size, :integer
    remove_column :posts, :width, :integer
    remove_column :posts, :height, :integer
  end
end
