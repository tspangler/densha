class PostsController < ApplicationController
  def create
    @post = Post.new(:params[:post])
  end
  
  def delete
    # Psuedocode: if session.admin? delete end
  end
end
