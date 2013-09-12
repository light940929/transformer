 require "csv"
 module Transformer
  class Hash
   
   def self.hash2csv
       
      
       hash = {1=>["Shoes", 59.99], 2=>["Shirts", 19.99], 3=>["Hats", 25.99], 4=>["Coats", 99.99], 5=>["Beanies", 6.99]}
       output = Hash[hash.to_a]
       output = output.each_with_object([]) { |i,mem| mem << i.to_a}.flatten.to_csv
       puts output
     end
   end
end