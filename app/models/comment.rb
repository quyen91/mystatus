class Comment < ApplicationRecord
  belongs_to :status
  belongs_to :user

  validates_presence_of :body

  def commenter
    User.find_by_id(user_id).temp_name
  end

end
