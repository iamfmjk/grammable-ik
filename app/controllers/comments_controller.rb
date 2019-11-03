class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def new
  end

  def create
    @gram = Gram.find_by_id(params[:gram_id])
    return render_not_found if @gram.blank?
    @comment = @gram.comments.create(comment_params.merge(user: current_user))
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
