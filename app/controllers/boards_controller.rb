class BoardsController < ApplicationController
  def index
    @board_list = Board.list
  end
  
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
