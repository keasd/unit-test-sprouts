require "minitest/autorun"

class BatchTest < Minitest::Test

  def test_initialize_with_mungs
    batch = batch.new
    assert
  end

  def test_counts_sprouted_mungs
    # Precondition
    mungs = Array.new(100) { Mung.new }
    mungs[1..10].map { |m| m.sprout }
    batch = Batch.new( mungs )

    # Postcondition
    assert_equals batch.count_sprouted, 10
  end

  # Test for find_mungs? => See Sandi Metz video
end
