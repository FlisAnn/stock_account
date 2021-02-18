require './lib/stock.rb'
describe Stock do
  it 'has 0 on initialize' do
    expect(subject.quantity).to eq 0
  end
  it 'quantity is increased at delivery' do
    subject.deliver 15
    expect(subject.quantity).to eq 15
  end
end