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
    game_over_y
  end

  def game_over_x
    @board.map do |row|
      return 'X winna' if row == ['X','X','X']
    end
  end

  def game_over_y
    @board.map do |row|
      if row == ['O','O','O']
        return 'O winna'
      end
    end
  end

end
