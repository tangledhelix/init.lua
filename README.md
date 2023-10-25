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

## Custom key maps

(I use `<space>` as my `<leader>`.)

| Mode   | Map                   | Plugin(s)          | Description                                                 |
|--------|-----------------------|--------------------|-------------------------------------------------------------|
| normal | `<ctrl-j>`            | harpoon            | jump to next file in Harpoon list                           |
| normal | `<ctrl-k>`            | harpoon            | jump to previous file in Harpoon list                       |
| normal | `<ctrl-t>`            | fterm              | toggle terminal pane                                        |
| normal | `[t`, `]t`            | todo-comments      | jump to previous or next TODO/FIX/etc comment               |
| normal | `<leader><leader>`    | harpoon            | open Harpoon window                                         |
| normal | `<leader> a`          | harpoon            | add current file/buffer to Harpoon list                     |
| normal | `<leader> b`          | dap                | toggle breakpoint                                           |
| normal | `<leader> B`          | dap                | set breakpoint, overwrite if necessary                      |
| normal | `<leader> df`         | dap                | debug: view stack frame in a centered floating window       |
| normal | `<leader> dh`         | dap                | debug: view value of thing under cursor in a hover          |
| normal | `<leader> dc`         | dap                | debug: Continue                                             |
| normal | `<leader> di`         | dap                | debug: step Into                                            |
| normal | `<leader> do`         | dap                | debug: step Out                                             |
| normal | `<leader> dv`         | dap                | debug: step oVer                                            |
| normal | `<leader> dl`         | dap                | debug: run last debug config                                |
| normal | `<leader> dp`         | dap                | debug: view value of thing under cursor in preview window   |
| normal | `<leader> dr`         | dap                | debug: open REPL                                            |
| normal | `<leader> ds`         | dap                | debug: view current scopes in a centered floating window    |
| normal | `<leader> e`          |                    | open file explorer                                          |
| normal | `<leader> f.`         | telescope          | "find <here>" - fuzzy find in this buffer                   |
| normal | `<leader> fa`         | telescope          | "find again" - open with same search as last time           |
| normal | `<leader> fb`         | telescope          | "find buffer"                                               |
| normal | `<leader> fc`         | telescope          | "find command"                                              |
| normal | `<leader> fC`         | telescope          | "find Colorscheme"                                          |
| normal | `<leader> fd`         | telescope          | "find in diagnostics"                                       |
| normal | `<leader> ff`         | telescope          | "find file"                                                 |
| normal | `<leader> fg`         | telescope          | "find in git" -  honors .gitignore                          |
| normal | `<leader> fhc`        | telescope          | "find in command history"                                   |
| normal | `<leader> fhs`        | telescope          | "find in search history"                                    |
| normal | `<leader> fj`         | telescope          | "find in jumplist"                                          |
| normal | `<leader> fm`         | telescope          | "find mark"                                                 |
| normal | `<leader> fs`         | telescope          | "find string" (requires ripgrep)                            |
| normal | `<leader> ft`         | telescope          | "find in tree-sitter"                                       |
| normal | `<leader> fw`         | telescope, vimwiki | "find in wiki"                                              |
| normal | `<leader> F`          | neoformat          | run Neoformat on file (requires prettier)                   |
| normal | `<leader> g`          | lazygit            | open lazygit UI (requires lazygit)                          |
| normal | `<leader> L`          | lazy               | open lazy UI (plugin manager)                               |
| normal | `<leader> lp`         | dap                | set breakpoint with log, {var} interpolation                |
| normal | `<leader> M`          | mason              | open mason (LSP, linter, formatter, DAP manager)            |
| normal | `<leader> p`          |                    | paste from system clipboard                                 |
| normal | `<leader> P`          |                    | paste (before cursor) from system clipboard                 |
| normal | `<leader> y <motion>` |                    | copy to system clipboard                                    |
| normal | `<leader> z`          |                    | toggle wrap mode                                            |
| visual | `J`                   |                    | move selection down, with re-indent                         |
| visual | `K`                   |                    | move selection up, with re-indent                           |
| visual | `<leader> y`          |                    | copy selection to system clipboard                          |

