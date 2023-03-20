class Group < ApplicationRecord
  
  has_many :messages, dependent: :destroy
  has_many :user_to_groups
  has_many :users, through: :user_to_groups
  
end
