require './lib/stock.rb'
describe Stock do
  let(:quantity) { instance_double('Quantity') }

  before do
    allow(quantity).to receive(:balance).and_return(100)
    allow(quantity).to receive(:balance=)
  end
  it 'has 0 on initialize' do
    expect(subject.quantity).to eq 0
  end
  it 'quantity is increased at delivery' do
    subject.deliver(15, account)
    expect(subject.quantity).to eq 15
  end
  # it 'quantity is decreased at sale' do
  #   subject.sale 5
  #   expect(subject.quantity).to eq 10
  # end
  it 'allow sale if the stock has enough quantity' do
    expected_output = { status: true, message: 'success', quantity: 15 }
    expect(subject.deliver(15, quantity)).to eq expected_output
  end
end