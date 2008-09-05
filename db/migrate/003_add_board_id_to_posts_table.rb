class AddBoardIdToPostsTable < ActiveRecord::Migration
  def self.up
    add_column :posts, :parent_board, :integer
  end

  def self.down
    remove_column :posts, :parent_board
  end
end
