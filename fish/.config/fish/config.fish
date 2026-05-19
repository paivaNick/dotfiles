if status is-interactive
  # Commands to run in interactive sessions can go here
	starship init fish | source 
  sleep 0.1
    set -U fish_greeting "🐧 Olá, Nicolas! 🚀"
end
