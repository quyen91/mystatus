class ProfilesController < ApplicationController

  def index
    # @status = current_user.statuses.build
    @status = Status.new
    # @comment = current_user.comments.build
    @feeds = current_user.feed.order('created_at DESC')
  end
  def show

    # @comment = current_user.comments.build
    @profile = User.find(params[:id])
    @feeds = @profile.statuses
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end
end
