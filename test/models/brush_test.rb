require "test_helper"

describe Brush do
  let(:brush) { brushes(:fan_blender) }

  it "must be valid" do
    value(brush).must_be :valid?
  end

  it "wont be valid without a SKU" do
    brush.sku = nil
    value(brush).wont_be :valid?
  end

  it "wont be valid without a name" do
    brush.name = nil
    value(brush).wont_be :valid?
  end

  it "wont be valid without a unique SKU" do
    invalid_brush = Brush.new(sku: brush.sku, name: "Any brush name")

    value(invalid_brush).wont_be :valid?
  end
end
