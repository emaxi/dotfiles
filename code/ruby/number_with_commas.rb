num = 123456789
num.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
