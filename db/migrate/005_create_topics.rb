class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string  :username, :default => 'Anonymous'
      t.string  :tripcode
      t.string  :subject
      t.string  :email
      t.text    :comment
      t.integer :attachment
      t.integer :board_id # foreign key to tie to a board
      t.timestamps
    end
    
    # creating foreign key to tie a post to a topic
    remove_column 'posts', 'parent_board'
    rename_column 'posts', 'parent_thread', 'topic_id'
  end

  def self.down
    drop_table :topics
    rename_column 'posts', 'topic_id', 'parent_thread' # back to the old way
  end
end
