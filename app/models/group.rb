class Group < ApplicationRecord
  
  has_many :user_to_groups, dependent: :destroy
  has_many :messages, dependent: :destroy
  
end
