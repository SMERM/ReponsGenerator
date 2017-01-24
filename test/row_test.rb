require 'test_helper'

class RowTest < Minitest::Test

  def test_row_creation
    assert r = ReponsGenerator::Row.new
    assert_equal(r.orig_row.size,12)
    assert_equal(r.orig_row.size,r.orig_row.uniq.size)

    assert row = [0,1,2,3,4]
    assert r = ReponsGenerator::Row.new(row)
    assert_equal(r.orig_row,row)
  end

end
