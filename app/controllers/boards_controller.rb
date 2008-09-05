class BoardsController < ApplicationController
  # Show all posts in a given board
  def show
    @board_info = Board.find_by_shortcode(params[:shortcode])
    @posts = Post.find_all_by_parent_board(@board_info.id)
    
    # TODO: Assemble hashes for threads here, as opposed to in the view
  end

  # List all boards
  def index
    @board_list = Board.list
  end
  
  # Create a new board; this should be admin-only
  def create
    @board = Board.new(params[:board])
    
    if @board.save
      flash[:notice] = 'Board created.'
      redirect_to :action => 'index'
    else
      flash[:notice] = 'Board creation failed.'
    end
  end
end
