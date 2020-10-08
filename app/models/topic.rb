class Topic < ApplicationRecord
  validates_presence_of :title
  has_many :blogs, class_name: "Blog", foreign_key: "topic_id"
end
