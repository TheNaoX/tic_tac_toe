require 'spec_helper'

describe Game::Grid do

  let!(:grid) { Game::Grid.new }

  it 'has a field hash with 9 positions' do
    expect(grid.field.size).to eq(9)
  end

  it 'returns the combinations of free rows' do
    expect(grid.free_rows).to be_kind_of(Array)
    expect(grid.free_rows.size).to eq(8)
  end

  it 'saves a location' do
    grid.assign(:a1, :nought)
    expect(grid.free_rows.size).to eq(5)
  end

  it 'returns the free spaces' do
    expect(
      grid.free_spaces
    ).to eq([
      :a1, :a2, :a3,
      :b1, :b2, :b3,
      :c1, :c2, :c3
    ])
  end

end
