import re

str = "101001f0110a1"
pattern = re.compile("10+{1,3}1")
pattern2 = re.compile("10+{2,3}1")

matches = pattern.findall(str)
for match in matches:
    print(match)

matches2 = pattern2.findall(str)
for match in matches2:
    print(match)