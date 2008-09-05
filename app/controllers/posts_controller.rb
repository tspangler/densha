class PostsController < ApplicationController
  def create
    @post = Post.new(params[:post])
    # TODO: Make this actually save. Something's getting confusing about shortcodes.
    # Should we figure out the parent board by shortcode or id?
    # I say shortcode, but for some reason I can't get it to pass through.
    
    if @post.save
      flash[:notice] = "Post added to board #{@parent_board}"
      redirect_to :back
    else
      render :action => 'create'
    end
  end
  
  def delete
    # Psuedocode: if session.admin? delete end
  end
end
