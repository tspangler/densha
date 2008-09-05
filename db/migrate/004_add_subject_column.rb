class AddSubjectColumn < ActiveRecord::Migration
  def self.up
    add_column :posts, :subject, :string, :limit => 40
    remove_column :posts, :parent_board
    add_column :posts, :parent_board, :string
  end

  def self.down
    remove_column :posts, :subject
    remove_column :posts, :parent_board
    add_column :posts, :parent_board, :string
  end
end
