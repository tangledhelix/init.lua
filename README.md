# README

This is my Neovim config.

I use this config on macOS. There's no reason it wouldn't work on Linux, BSD,
etc, but most distros have NeoVim 0.7 or earlier so I don't bother.

## Requirements

- Neovim 0.9+
- LuaJIT

Optional, but some things won't work without them:

- ripgrep (for Telescope "find string" `<leader>fs`)
- tree-sitter and Node.js (for tree-sitter plugins)
- lazygit (for LazyGit `<leader>g`)
- prettier (for NeoFormat)

## Custom keybinds

Leader is `<space>`

- `J` move selection down and re-indent (visual mode)
- `K` move selection up and re-indent (visual mode)
- `[t` and `]t` previous and next TODO comment
- `<leader> <leader>` open Harpoon list
- `<leader> a` add file to Harpoon list
- `<leader> e` open file explorer
- `<leader> f a` "find again" opens Telescope with same search as last time
- `<leader> f f` "find file" using Telescope (fuzzy finder)
- `<leader> f g` "find in git" (fuzzy finder)
- `<leader> f s` "find string" using Telescope (uses ripgrep)
- `<leader> f w` "find word" search for word under cursor
- `<leader> g` open lazygit
- `<leader> p` paste from system clipboard
- `<leader> P` paste (before cursor) from system clipboard
- `<leader> y` copy selection to system clipboard (visual mode)
- `<leader> y<motion>` copy to system clipboard
- `<leader> z` toggle wordwrap mode

