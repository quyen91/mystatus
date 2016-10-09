class StatusesController < ApplicationController
  def create
    @status = current_user.statuses.build(status_params)
    if @status.save
      flash[:success] = "Micropost created!"
      respond_to do |format|
        format.html { redirect_to profiles_path }
        format.js
      end
    else
      redirect_to profiles_path
    end

  end

  private
   def status_params
    params.require(:status).permit!
   end
end
