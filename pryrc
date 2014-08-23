## Useful Collections

def a_array
  (1..6).to_a
end

def a_hash
  {hello: "world", free: "of charge"}
end

Pry.config.color = true
Pry.config.prompt = Pry::NAV_PROMPT

Pry.config.commands.alias_command "h", "hist -T 20", desc: "Last 20 commands"
Pry.config.commands.alias_command "hg", "hist -T 20 -G", desc: "Up to 20 commands matching expression"
Pry.config.commands.alias_command "hG", "hist -G", desc: "Commands matching expression ever used"
Pry.config.commands.alias_command "hr", "hist -r", desc: "hist -r <command number> to run a command"

