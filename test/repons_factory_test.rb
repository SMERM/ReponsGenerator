require 'test_helper'

class ReponsFactoryTest < Minitest::Test

  def setup
    assert @rf = ReponsGenerator::ReponsFactory.new
  end

  def test_note_generation
    n = 0
    while n < 100
	    assert (a = @rf.note).kind_of?(Numeric), "n: #{n} note: #{a}"
      n += 1
    end
  end

  def test_bump_index
    n = 0
    while n < 50
      assert (a = @rf.send(:bump_index)) < 12, "n: #{n} index: #{a}"
      n += 1
    end
  end

end
