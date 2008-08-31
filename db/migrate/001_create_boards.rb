class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|
      t.string  :shortcode
      t.string  :name
      t.text    :description
      t.string  :alert
      t.string  :password
      t.timestamps
    end
  end

  def self.down
    drop_table :boards
  end
end
