local g = vim.g
local set = vim.opt
local path = vim.fn.expand("~/.config")

g.vimspector_base_dir='/home/tufe/.local/share/nvim/site/pack/packer/start/vimspector'
g.mapleader = " "
set.list = true
set.listchars = { eol = "↲", trail = "·" }
set.termguicolors = true
set.signcolumn = "yes"
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.cursorline = false
set.number = true
set.relativenumber = true
set.mouse = "a"
set.swapfile = false
set.autoindent = true
set.hidden = true
set.inccommand = "split"
set.clipboard = "unnamedplus"
set.hlsearch = true
set.ignorecase = true
set.smartcase = true
set.lbr = true
set.backup = true
set.undofile = true
set.writebackup = true
set.undodir = { path .. "/nvim/undos" }
set.backupdir = { path .. "/nvim/backups" }
set.completeopt = { "menuone", "noselect" }
set.virtualedit = "all"
