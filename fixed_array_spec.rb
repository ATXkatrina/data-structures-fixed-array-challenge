require_relative 'fixed_array'

describe FixedArray do
  let(:test) { FixedArray.new(3) }

  it "returns an object with an array of n length" do
    expect(test.length).to eq(3)
  end

  describe ".set" do
    it "saves the n index with the given value" do
      expect(test.set(1, 'words')).to eq('words')
      expect { test.set(5, 'will fail') }.to raise_error(OutofBoundsException)
    end
  end

  describe ".get" do
    # before :all do
    #   test.set(0, 'word test')
    # end
    it "retrieves the n index from the fixed array" do
      # expect(test.get(0)).to be('word test')
      expect(test.get(1)).to be_nil
      expect { test.get(4) }.to raise_error(OutofBoundsException)
    end
  end

  describe ".length" do
    it "returns the total number of values in the array" do
      expect(test.length).to be(3)
    end
  end

end
