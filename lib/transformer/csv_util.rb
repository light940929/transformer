module Transformer
  module CsvUtil
    def csv2hashes path, opts = {}
      hash_ary = []
      separator = opts[:separator] || ','
      f = File.open path, 'r'
      header = f.each.first.strip.split separator
      f.each do |line|
        hash_ary << Hash[ header.zip line.strip.split(separator) ]
      end
      f.close
      hash_ary
    end
  end
end