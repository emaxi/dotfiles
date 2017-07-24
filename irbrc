require 'irb/ext/save-history'

IRB.conf[:SAVE_HISTORY] = 1000

def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end

def pbpaste
  `pbpaste`
end
