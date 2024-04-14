import re

str = "101tf11flb10001"
pattern = re.compile(r"10+1") # Шаблон для поиска подстрок "1[0]1"

matches = pattern.findall(str)
for match in matches:
    print(match)