require_relative 'bowling'
describe "Calculatogugugr" do
  describe '#add' do
    it 'returns the sum of its arguments' do
      Calculator.new.add(1,2).should eq(3)
      #expect(Calculator.new.add(1, 2)).to eq(3)
    end
   end
   describe 'subtract' do
   	it "fff" do
   		Calculator.new.subtract(2,1).should eq(1)
   	end
  end
end