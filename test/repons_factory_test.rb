require 'test_helper'

class ReponsFactoryTest < Minitest::Test

  def test_note_generation
    assert rf = ReponsGenerator::ReponsFactory.new
    n = 0
    while n < 100


	assert rf.note.kind_of?(Numeric),rf.note
      n += 1
    end
  end



end
