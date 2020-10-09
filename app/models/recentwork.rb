class Recentwork < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

def self.rails
  where(subtitle: "Ruby on Rails")
end
  # scope :rails, -> { where(subtitle: "Html and CSS")}
  after_initialize :set_defaults
 def set_defaults
  self.main_image ||= "https://via.placeholder.com/600x400"
  self.thumb_image ||= "https://via.placeholder.com/350x350"   
 end


end
