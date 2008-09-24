class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])
    
    # Move the shortcode parameter into the @post hash so it gets saved
    @post.parent_board = params[:shortcode];
    @post.parent_thread = params[:parent_thread];
    
    if @post.save
      flash[:notice] = "Post added successfully."

      if @post.email == 'noko'
        redirect_to :controller => 'posts', :action => 'show', :id => @post.id
      else
        redirect_to :controller => 'boards', :action => 'show', :shortcode => params[:shortcode]
      end    
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
