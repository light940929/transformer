require "csv"
module Transformer
 
  class Csv
     
     DEFAULT_PATH  = File.expand_path("../../transformer/test/data.csv", __FILE__)
     
     def self.csv2hash
       
        
        @file =  DEFAULT_PATH       
        data = Hash[ CSV.read(@file).map do |row|
        [ row[0].to_i, [row[1].strip,row[2].to_f] ] end ]
        puts data
        puts "finish !!"
    
     end
  end
end
