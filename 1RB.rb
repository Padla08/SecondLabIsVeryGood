str = "101tf11flb10001"
pattern = /10+1/

matches = str.scan(pattern)
matches.each do |match|
  puts match
end