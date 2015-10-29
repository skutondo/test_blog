class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params.permit[:comment])
  	@comment.save

  def permit!
  each_pair do |key, value|
    convert_hashes_to_parameters(key, value)
    self[key].permit! if self[key].respond_to? :permit!
  end

  @permitted = true
  self
end

  	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end

end
