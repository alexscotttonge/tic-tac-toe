class Game

  attr_reader :board

  def initialize
    @board = [[nil, nil, nil],
              [nil, nil, nil],
              [nil, nil, nil]]
  end

  def update_board(row, column, value)
    @board[row][column] = value
    game_over_x
    # @board
  end

  def game_over_x
    @board.map do |row|
      if row == ['X','X','X']
        return 'X winna'
      # elsif row == ['O','O','O']
      #   return 'O winna'
      end
    end

  end

end
