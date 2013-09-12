require 'test_helper'

class TransformerTest < Test::Unit::TestCase
  TEST_CSV = File.join File.dirname(__FILE__), 'test.csv'
  
  def test_csv2hashes
    assert_equal [{"A"=>"2", "B"=>"4"}], Transformer.csv2hashes(TEST_CSV, :separator => '|')
  end
  
  def test_hashes2csv
    assert_equal "A|B\n2|4\n", Transformer.hashes2csv([{A: 2,B:4}], :separator => '|')
  end
end