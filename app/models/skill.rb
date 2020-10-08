class Skill < ApplicationRecord
  validates_presence_of :name, :percentage_completed

end
