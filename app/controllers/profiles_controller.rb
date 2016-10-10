class ProfilesController < ApplicationController

  def index
    # @status = current_user.statuses.build
    @status = Status.new
    @feeds = current_user.statuses
  end
  def show
    @profile = User.find(params[:id])
    @feeds = @profile.statuses
  end
end
