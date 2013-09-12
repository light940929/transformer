#require "transformer/version"
require "csv"
require "transformer/csv2hash.rb"
require "transformer/hash2csv.rb"
module Transformer
  
  class Do
  
      
     def self.test
       puts "====================="
       puts "Are you ready?"
       puts "====================="
     end 
     
     def self.csv
      
      Csv.csv2hash  
     
     end
     
     def self.hash
     
      Hash.hash2csv 
    
     
     end 
  end
end
