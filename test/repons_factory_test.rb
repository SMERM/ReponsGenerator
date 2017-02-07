require 'test_helper'

class ReponsFactoryTest < Minitest::Test

  def setup
    assert @rf = ReponsGenerator::ReponsFactory.instance
  end

  def test_singleton
    assert !ReponsGenerator::ReponsFactory.respond_to?(:new)
    # metodo per vedere se ha quella classe.
    # Dovrebbe tornare falso, allora inverto la logica con !
    assert_equal (rf = ReponsGenerator::ReponsFactory.instance).object_id, @rf.object_id
  end

  def test_note_generation
    n = 0
    while n < 100
	    assert (a = @rf.next_note).kind_of?(Numeric), "n: #{n} next_note: #{a}"
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
