require 'game'

describe Game do

  let(:game) { described_class.new }

  it 'displays an empty board' do
    expect(game.board).to be_an_instance_of(Array)
  end

  describe '#update_board' do
    it 'updates a field with a value' do
      game.update_board(1, 1, 'X')
      expect(game.board[1][1]).to eq 'X'
    end
  end

  describe '#game_over' do
    it 'finishes the game after 3 in a row' do
      game.update_board(0, 0, 'X')
      game.update_board(1, 1, 'O')
      game.update_board(0, 1, 'X')
      game.update_board(1, 2, 'O')
      game.update_board(0, 2, 'X')
      expect(game.game_over).to eq 'Playa one wins'
    end
  end


end
