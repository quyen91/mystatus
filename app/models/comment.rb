class Comment < ApplicationRecord
  belongs_to :status
  belongs_to :user

  validates_presence_of :body

end
