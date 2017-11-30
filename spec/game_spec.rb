require 'game'

describe Game do

  let(:game) { described_class.new }

  it 'displays an empty board' do
    expect(game.board).to eq [[nil,nil,nil],
                              [nil,nil,nil],
                              [nil,nil,nil]]
  end

  describe '#update_board' do
    it 'updates a field with a value' do
      game.update_board(1,1,'X')
      expect(game.board).to eq [[nil,nil,nil],
                                [nil,'X',nil],
                                [nil,nil,nil]]
    end
  end

end
