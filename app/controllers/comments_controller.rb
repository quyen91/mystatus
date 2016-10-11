class CommentsController < ApplicationController
  def create
   comment = current_user.comments.build(comment_params)
   comment.status_id = params[:status_id]
   if comment.save
     redirect_to root_url
   else
    render html: 'Error'
   end
  end

  private
   def comment_params
     params.require(:comment).permit(:body)
   end
end
