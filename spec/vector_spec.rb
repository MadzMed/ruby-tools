require_relative "../vector.rb"

describe Vector do

  let(:vector1) { Vector.new(0, 6, 0, -1) }
  let(:vector2) { Vector.new(0, 4, 0, 5) }

  describe "#v1 scalar product v2" do
    it "expect v1.v2 equal to 19 " do
      expect(vector1.scalar_product(vector2.vector)).to eq 19
    end
  end

  describe "#scalar product" do
    it "expect v1.v1 equal to 37 " do
      expect(vector1.scalar_product(vector1.vector)).to eq 37
    end
  end

  describe "#norm" do
    it "should return the right norm" do
      expect(vector1.norm).to eq Math.sqrt(37)
    end
  end

  describe "#orthogonal projection" do
    it "should return orthogonal_projection v2 on v1" do
      expect(vector1.orthogonal_projection(vector2)).to eq 19 / Math.sqrt(37)
    end
  end
end
