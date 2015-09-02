require "minitest/autorun"
require "./batch"

describe Batch do
  let(:batch) { Batch.new }

  it "has some beans" do
    batch.beans.wont_be_nil
    batch.beans.first.must_equal "bean_0"
  end

  it "changes the batch state to soaked" do
    batch.soak
    batch.state.must_equal "soaked"
  end
end
