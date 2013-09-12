require "test_helper"
require "transformer/csv2hash.rb"
require "transformer/hash2csv.rb"
require "transformer/csv2hash.rb"


class TransformerTest  < Test::Unit::TestCase
   
   def setup
      csv = Transformer::Csv.new
      hash =  Transformer::Hash.new
   end
   
   
   #def test_csv assert csv.kind_of ? Transformer::Csv.csv2hash ; end
   
   #def test_hash assert hash.kind_of ? Transformer::Hash.hash2csv ; end
     

end
