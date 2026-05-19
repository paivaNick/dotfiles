if status is-interactive
  # Commands to run in interactive sessions can go here
	starship init fish | source 
  fish_ssh_agent
  set -U fish_greeting "🐧 Olá, Nicolas! 🚀"
end
