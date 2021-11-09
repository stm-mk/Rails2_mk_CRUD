class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = Comment.new(comment_params)
        @comment.post_id = @post.id
        @comment.save
        # @comment = @post.comments.create(comment_params)
        redirect_to @post
    end

    private
        def comment_params
            params.require(:comment).permit(:body)
        end

end
