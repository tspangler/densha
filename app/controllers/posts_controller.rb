class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])
    
    # Move the shortcode parameter into the @post hash so it gets saved
    @post.parent_board = params[:shortcode];
    @post.parent_thread = params[:parent_thread];
    
    if @post.save
      # TODO: Implement noko here
      flash[:notice] = "Post added successfully."
      redirect_to :back
    else
      render :action => 'create'
    end
  end
  
  def show
    @board_info = Board.find_by_shortcode(params[:shortcode])
    @post = Post.find_by_id(params[:id])
    
    # TODO: Modify query so it only returns replies, not parent threads
    @replies = Post.find_all_by_parent_thread(params[:id], :order => "created_at DESC")
  end
  
  def delete
    # Psuedocode: if session.admin? delete end
  end
end
