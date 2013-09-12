require "test_helper"

class TransformerTest  < Test::Unit::TestCase
   def test_csv
       @csv = Transformer::Csv.csv2hash 
   end
   
   def test_hash
       @hash = Transformer::Hash.hash2csv 
   end   

end
