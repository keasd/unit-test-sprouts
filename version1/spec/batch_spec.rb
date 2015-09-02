require "minitest/autorun"
require "./batch"
require "./bean"

describe Batch do
  let(:batch) { Batch.new }

  it "has some beans" do
    batch.beans.wont_be_nil
    batch.beans.first.must_be_kind_of Bean
  end

  describe "when soaking the batch" do
    before do
      batch.soak
    end

    it "change state to soaked" do
      expect(batch.state).to_return "soaked"
    end

    it "change state to drained" do
      batch.drain
      expect(batch.state).to_return "drained"
    end
  end
end
