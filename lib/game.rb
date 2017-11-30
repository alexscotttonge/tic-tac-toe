class Game

  attr_reader :board

  def initialize
    @board = [[nil,nil,nil],
              [nil,nil,nil],
              [nil,nil,nil]]
  end

  def update_board(row, column, value)
    @board[row][column] = value
  end

end
