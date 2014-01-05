require 'spec_helper'

describe Game do

  context 'creating games' do
    it 'stores it in a hash' do
      expect {
        Game.store("12345678")
      }.to_not raise_error
    end
  end

  context 'getting games' do
    before do
      Game.store(:game_1)
    end

    it 'retrieves the game' do
      expect(
        Game.get_instance(:game_1)
      ).to be_kind_of(Game::Environment)
    end
  end

end
