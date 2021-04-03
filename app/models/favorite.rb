class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  # varidates :user_id, presence: true
  # varidates :topic_id, presence: true
  
end
