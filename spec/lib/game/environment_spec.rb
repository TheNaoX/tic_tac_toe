require 'spec_helper'

describe Game::Environment do

  let!(:game) { Game::Environment.new(:nought) }

  it 'accepts the type shape type' do
    expect(game.shape_type).to eq(:nought)
  end

  it 'assigns the opposite shape type to the computer' do
    expect(game.computer_shape_type).to eq(:cross)
  end

end
