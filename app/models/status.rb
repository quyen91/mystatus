class Status < ApplicationRecord
  belongs_to :user
  validates_presence_of :content

  def writer
    User.find_by(id: user_id).temp_name
  end
end
