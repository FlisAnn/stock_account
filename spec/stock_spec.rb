require './lib/stock.rb'
describe Stock do
  it 'has 0 on initialize' do
    expect(subject.amount).to eq 0
  end
end