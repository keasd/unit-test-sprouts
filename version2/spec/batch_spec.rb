require "minitest/autorun"
require "./batch"
require "./bean"

describe Batch do
  let(:batch) { Batch.new }

  it "has some beans" do
    batch.beans.wont_be_nil
    batch.beans.first.must_be_kind_of Bean # FIXME Mock and assert on send
  end

  it "changes the batch state to soaked" do
    batch.soak
    batch.state.must_equal "soaked"
  end
end
