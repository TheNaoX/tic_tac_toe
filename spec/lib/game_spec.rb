require 'spec_helper'

describe Game do

  before do
    Game.store(:game_1)
  end

  it 'stores a new game' do
    expect {
      Game.store("12345678")
    }.to_not raise_error
  end

  it 'retrieves the stored game' do
    expect(
      Game.get_instance(:game_1)
    ).to be_kind_of(Game::Environment)
  end

  it 'deletes the games from the hash' do
    Game.finish(:game_1)
    expect(
      Game.get_instance(:game_1)
    ).to be_nil
  end

end
