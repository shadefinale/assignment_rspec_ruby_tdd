require 'stock_picker'
describe "#stock_picker" do

  it 'should return valid values original' do
    expect(stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])).to eq([2,6])
  end

  it 'should return valid values basic' do
    expect(stock_picker([1,2])).to eq([0,1])
  end

  it 'should return nil if no best day (descending)' do
    expect(stock_picker([10,9,8,7])).to be_nil
  end

  it 'should return nil if no best day (homogenous)' do
    expect(stock_picker([10,10,10,10])).to be_nil
  end

  it 'should return valid values (hard)' do
    expect(stock_picker([10,15,11,16,9,17,6,20,35,2,27,3])).to eq([6,8])
  end

end