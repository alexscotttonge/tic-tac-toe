class Game

  attr_reader :board

  def initialize
    @board = [[nil, nil, nil],
              [nil, nil, nil],
              [nil, nil, nil]]
  end

  def update_board(row, column, value)
    @board[row][column] = value
    game_over
    # @board
  end

  def game_over
    @board.map do |row|
      if row == ['X','X','X']
        return 'X winna'
      elsif row == ['O','O','O']
        'O winna'
      end
    end

  end

end
