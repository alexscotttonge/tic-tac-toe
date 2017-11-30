require 'game'

describe Game do

  let(:game) { described_class.new }

  it 'initializes with a board' do
    expect(game.board).to eq "
                               |  |
                            ----------
                               |  |
                            ----------
                               |  |"
  end

end
