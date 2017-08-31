class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.comment = params[:input_comment]
        @comment.written_by = params[:written_by]
        @comment.post_id = params[:id]
        @comment.save
        redirect_to "/posts/#{params[:id]}"

    end
    
    def destroy
        @comment = Comment.find(params[:comment_id])
        @comment.destroy
        redirect_to "/posts/#{params[:id]}"
    end
end
