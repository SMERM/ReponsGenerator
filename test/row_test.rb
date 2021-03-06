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

  def test_transpo
    assert r = ReponsGenerator::Row.new
    t = 3
    assert rt = r.transpo(t)
    rt.orig_row.each_index { | idx | assert_equal rt[idx], (r[idx]+t) %12 } #per ogni nota verifico che la nota trasposta è la nota stessa + la trasposizione, modulo 12
  end

end
