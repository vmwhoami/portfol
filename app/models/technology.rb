class Technology < ApplicationRecord
  belongs_to :recentwork, class_name: "Recentwork", foreign_key: "recentwork_id"
end
