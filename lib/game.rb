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
    @board
  end

  def game_over
    if @board == [["X", "X", "X"],
                  [nil, "O", "O"],
                  [nil, nil, nil]]
        'Playa one wins'
    end
  end

end
