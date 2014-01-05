require 'spec_helper'

describe Game::Environment do

  let!(:game) { Game::Environment.new(:nought) }

  it 'accepts the type shape type' do
    expect(game.shape_type).to eq(:nought)
  end

  it 'assigns the opposite shape type to the computer' do
    expect(game.computer_shape_type).to eq(:cross)
  end

  it 'assigns cross by default' do
    game = Game::Environment.new
    expect(game.shape_type).to eq(:cross)
    expect(game.computer_shape_type).to eq(:nought)
  end

end
