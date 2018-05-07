class CommentsController < ApplicationController
    before_action :authorize, only: [:edit, :update, :destroy]
    
    def create
        @highlight = Highlight.find(params[:highlight_id])
        @comment = @highlight.comments.create(comment_params)
        redirect_to highlight_path(@highlight)
    end
    
    def destroy
        @highlight = Highlight.find(params[:highlight_id])
        @comment = @highlight.comments.find(params[:id])
        @comment.destroy
        redirect_to highlight_path(@highlight)
    end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
