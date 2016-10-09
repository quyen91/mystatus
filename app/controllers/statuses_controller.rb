class StatusesController < ApplicationController
  def create
    @status = current_user.statuses.build(status_params)
    if @status.save
      flash[:success] = "Micropost created!"
      redirect_to profile_path
      # respond_to do |format|
      #   format.html { }
      #   format.js
      # end
    else
      redirect_to profile_path
    end

  end

  private
   def status_params
    params.require(:status).permit!
   end
end
