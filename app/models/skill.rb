# frozen_string_literal: true

class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :name, :percentage_completed
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
