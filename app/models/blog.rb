# frozen_string_literal: true

class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :topic, class_name: 'Topic', foreign_key: 'topic_id'
  enum status: { draft: 0, published: 1 }
  # slug implementation
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body
end
