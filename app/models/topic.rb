class Topic < ActiveRecord::Base
  belongs_to :board
  has_many :posts
  
  has_attachment  :content_type => :image,
                  :storage => :file_system,
                  :partition => false,
                  :max_size => 2048.kilobytes,
                  :thumbnails => { :thumb => 'x126' }, # no wider than 126px
                  :path_prefix => '/public/images/posted/'
  validates_as_attachment
end
