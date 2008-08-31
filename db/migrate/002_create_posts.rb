class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string  :username, :default => 'Anonymous'
      t.string  :tripcode
      t.string  :email
      t.text    :comment
      t.integer :attachment
      t.integer :parent_thread
      t.string  :deletion_password
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
