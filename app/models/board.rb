class Board < ActiveRecord::Base
  def self.list
    find(:all, :order => 'shortcode')
  end
end
