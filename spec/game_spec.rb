require 'game'

describe Game do

  let(:game) { described_class.new }

  it 'displays an empty board' do
    expect(game.display_board).to eq [[0,0,0],
                                      [0,0,0],
                                      [0,0,0]]
  end

end
