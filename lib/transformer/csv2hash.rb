require "csv"
module Transformer
 
  class Csv
     
    DEFAULT_PATH  = File.expand_path("../../../test/data.csv", __FILE__)
    
    #def name(file = '')
    #  file ||= ''
    #  output = []
      
     # output << file.strip
      
     # output.join(',')
    #end 

    def self.csv2hash(file = nil)
      file ||=  DEFAULT_PATH
      array = CSV.read(file).map do |row|
        [ 
          row[0].to_i,
          [
            row[1].strip,
            row[2].to_f
          ]
        ]
      end
      
      data = ::Hash[array]
     
      puts "csv to hash finish!!"
      data
    end
  end
end
