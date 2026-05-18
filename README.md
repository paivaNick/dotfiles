# 🧩 dotfiles – Minhas configurações gerenciadas com GNU Stow

Este repositório contém todos os meus arquivos de configuração (dotfiles) para programas como shell, editores, gerenciadores de janela, barra e terminal.  
Eles são organizados em **pacotes** usando [GNU Stow](https://www.gnu.org/software/stow/), o que permite instalar, remover ou atualizar configurações de cada programa de forma independente e limpa.

## 📦 O que está incluído

| Programa      | Configuração                           |
|---------------|----------------------------------------|
| Alacritty     | `~/.config/alacritty/`                 |
| Fish          | `~/.config/fish/`                      |
| Neovim        | `~/.config/nvim/`                      |
| Sway          | `~/.config/sway/config`                |
| Waybar        | `~/.config/waybar/` (config.jsonc + style.css) |
| tmux          | `~/.tmux.conf`                         |

## 🚀 Como usar este repositório

### Pré‑requisitos

- Git
- GNU Stow (instale com `sudo apt install stow` no Debian/Ubuntu, `sudo pacman -S stow` no Arch, `brew install stow` no macOS)

### Instalação (primeira vez ou após formatar)

1. **Clone o repositório** para dentro do seu `$HOME`:
   ```bash
   git clone https://github.com/seu-usuario/dotfiles.git ~/dotfiles
   cd ~/dotfiles
2. **Aplique todos os pacotes** de uma vez:
    ```bash
    stow *
    ```
