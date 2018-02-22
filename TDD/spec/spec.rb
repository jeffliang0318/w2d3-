require "rspec"
require "tdd_methods"
RSpec.describe Array do

  describe "::my_uniq" do
    subject(:arr) { [1, 2, 3, 3, 3, 4] }

    it "Return should be an Array" do
      expect(arr.my_uniq).to be_a(Array)
    end

    it "Each element should be unique" do
      expect(arr.my_uniq).to eq(arr.uniq)
    end

  end

  describe "::two_sum" do
    subject(:arr) { [-1, 0, 2, -2, 1] }
    let(:arr2) { [1, 2, 3, 4, 5] }

    it "Returns an array" do
      expect(arr.two_sum).to be_a(Array)
    end

    it "Returns arrays of two elements within each element" do
      expect(arr.two_sum[0].length).to eq(2)
    end

    it "elements at returned positions sum to zero" do
      pairs = arr.two_sum
      sum = arr[pairs[0][0]] + arr[pairs[0][1]]
      expect(sum).to eq(0)
    end

    it "Should return nil if no pairs are found" do
      expect(arr2.two_sum).to be_nil
    end
  end

end

describe "#my_transpose" do
  subject(:arr) { [[0, 1, 2],
                   [3, 4, 5],
                   [6, 7, 8]] }

  it "Returns an array" do
    expect(my_transpose(arr)).to be_a(Array)
  end

  it "returns matrix with the right amount of rows" do
    expect(my_transpose(arr).length).to eq(arr.transpose.length)
  end

  it "returns matrix with the right amount of columns" do
    expect(my_transpose(arr)[0].length).to eq(arr.transpose[0].length)
  end

  it "Should transpose the given matrix" do
    expect(my_transpose(arr)).to eq(arr.transpose)
  end


end

describe "#stock_picker" do
  subject(:arr) {[6, 2, 10, 15, 4, 1]}
  
  it "Should return an array" do
    expect(stock_picker(arr)).to be_a(Array)
  end

  it "Should return the most profitable pair of days" do
    expect(stock_picker(arr)).to eq([1,3])
  end

end
