require "csv"
module Transformer
  module CsvUtil
    def csv2hashes path, opts = {}
      hash_ary = []
      separator = opts[:separator] || ','
      f = File.open path, 'r'
      header = f.each.first.split separator
      f.each do |line|
        hash_ary << Hash[ header.zip line.split(separator) ]
      end
      f.close
      hash_ary
    end
  end
end
