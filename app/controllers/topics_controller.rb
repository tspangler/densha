class TopicsController < ApplicationController

  def index
  end
  
  def create
    # Create a new topic object with the data from the POST
    @topic = Topic.new(params[:post])
    @topic.board_id = Board.find_by_shortcode(params[:shortcode]˝).id
    
    if @topic.save
      flash[:notice] = 'Topic created successfully.'
    else
      flash[:notice] = 'Topic could NOT be created.'
    end
      redirect_to :controller => 'boards', :action => 'show', :shortcode => params[:shortcode]    
  end
  
  def reply
    @reply = Post.new(params[:reply])
    @reply.topic_id = params[:topic_id]
    
    if @reply.save
      flash[:notice] = 'Replied to post'
      redirect_to :controller => 'topics', :action => 'show', :id => @reply.topic_id
    else
      render :action => 'show'
    end
  end

  def show
    # @board_info = Board.find_by_shortcode(params[:shortcode])
    @topic = Topic.find(params[:id])
    
    @posts = @topic.posts
  end

  def delete
  end
end
