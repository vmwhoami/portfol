class Contact < ApplicationRecord
  validates :my_email_attribute, email: true
  validates :name, presence: true, length: {minimum:3,maximum: 50}
  
  
  
  
end