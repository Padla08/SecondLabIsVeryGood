str = "101001f0110a1"
pattern = /10+{1,3}1/
pattern2 = /10+{2,3}1/

matches = str.scan(pattern)
matches.each { |match| puts match }

matches2 = str.scan(pattern2)
matches2.each { |match| puts match }