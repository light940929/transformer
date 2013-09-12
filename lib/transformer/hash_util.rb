module Transformer
  module HashUtil
    def hashes2csv hash_ary, opts = {}
      return if hash_ary.nil? or hash_ary.empty?
      header = hash_ary.first.keys
      separator = opts[:separator] || ','
      if opts[:output]
        f = File.new opts[:output], 'w'
        f.puts header.join separator
        hash_ary.each do |hsh|
          f.puts hsh.values_at(*header).join separator
        end
        f.close
      else
        csv = ''
        csv << header.join(separator) << "\n"
        hash_ary.each do |hsh|
          csv << hsh.values_at(*header).join(separator) << "\n"
        end
        csv
      end
    end
  end
end