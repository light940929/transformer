#require "transformer/version"
require 'csv'
require 'transformer/csv2hash'
require 'transformer/hash2csv'



module Transformer
  
  class Happy
  
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
