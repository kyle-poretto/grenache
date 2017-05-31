class PostsController < ApplicationController
  def new 
    @post = Post.new
  end
  def create 
    @post = Post.new(user: current_user, content: params[:post][:content])
    @post.save
    redirect_to '/'
  end

end