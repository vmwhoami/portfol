class Recentwork < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

def self.rails
  where(subtitle: "Ruby on Rails")
end
  # scope :rails, -> { where(subtitle: "Html and CSS")}
 
end
