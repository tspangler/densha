module BoardsHelper
  # Add one item to the list if there are no boards found.
  def no_boards(board_list)
    content_tag('li', 'No boards found.') if board_list.empty?
  end
end
