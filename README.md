# eggvim.vim

[EGG](https://github.com/gboncoffee/egg) integration for Vim.

Tested in Vim 0.9, I think it works in Neovim too.

## Installation

It should work properly with your favorite Vim package manager.

## Usage

The command `:Egg` opens the current file inside the EGG debugger in a Vim
terminal. Running it while a debugger session is active will kill it and start
another one. Use an argument to the command to select the architeture: `Egg
riscv`.
