class ProfilesController < ApplicationController

  def index
    # @status = current_user.statuses.build
    @status = Status.new
  end
end
