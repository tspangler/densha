class Board < ActiveRecord::Base
  has_many :topics

  def self.list
    find(:all, :order => 'shortcode')
  end
end
