require './lib/player'

describe 'Player' do
  subject(:mo) { Player.new('Mo') }
  subject(:dean) { Player.new('Dean') }
  describe '#name' do
    it 'should return a name' do
    expect(mo.name).to eq 'Mo'
    end
  end
end