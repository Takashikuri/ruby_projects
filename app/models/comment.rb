class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  
  varidates :text, presence: true
end
