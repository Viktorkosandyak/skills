class CommentsController < ApplicationController
  def create
    @boxer = Boxer.find(params[:boxer_id])
    @comment = @boxer.comments.create(comment_params)
    redirect_to boxer_path(@boxer)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end


