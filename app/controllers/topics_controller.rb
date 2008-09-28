class TopicsController < ApplicationController

  def index
  end
  
  def create
    # Create a new topic object with the data from the POST
    @topic = Topic.new(params[:post])
    
    if @topic.save
      flash[:notice] = 'Topic created successfully.'
    else
      render :action => 'create'
    end
    
  end

  def show
    # @board_info = Board.find_by_shortcode(params[:shortcode])
    @topic = Topic.find(params[:id])
    
    @posts = @topic.posts
  end

  def reply
  end

  def delete
  end
end
