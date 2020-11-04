# frozen_string_literal: true

class Recentwork < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: ->(attributes) { attributes['name'].blank? }
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.rails
    where(subtitle: 'Ruby on Rails')
  end
  # scope :rails, -> { where(subtitle: "Html and CSS")}
  after_initialize :set_defaults
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '350')
  end
end
