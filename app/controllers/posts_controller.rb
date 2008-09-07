class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])
    
    # Move the shortcode parameter into the @post hash so it gets saved
    @post.parent_board = params[:shortcode];
    
    if @post.save
      flash[:notice] = "Post added to board #{params[:shortcode]}"
      redirect_to :back
    else
      render :action => 'create'
    end
  end
  
  def delete
    # Psuedocode: if session.admin? delete end
  end
end
