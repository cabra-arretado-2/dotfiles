local cmd = vim.cmd --- to execute string as vim command
local g = vim.g      -- to access global variables
local opt = vim.opt  -- to set options
local api = vim.api

require('plugins')
require('telescope-setup')
require('treesitter-setup')
require('bufferline-setup')
require('lualine-setup')
require('nerdtree-setup')
require('lsp-setup')
require('cmp-setup')
require('term-setup')
require('diversos-setup')

opt.number = true
opt.cursorline = true
opt.splitright = true
opt.termguicolors = true
opt.cursorline = true
opt.visualbell = true
opt.smartcase = true
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
opt.clipboard = 'unnamed'
opt.mouse = 'a'
opt.laststatus = 3
opt.shiftwidth = 4
opt.list = true
-- opt.listchars:append "eol:↵" -- other options( ↩ , ↴ , ↵ )
opt.listchars:append "trail:·"
opt.breakindent = true
opt.linebreak = true
g.mapleader = ','
g.maplocalleader = '\\'

-- Theme
local theme = [[onedark]]
cmd.colorscheme(theme)

------ Autocommands ---------

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {callback=function() vim.highlight.on_yank({timeout=300}) end})

-- tmux nav
cmd([[let g:tmux_navigator_disable_when_zoomed = 1]])

--  Require after the opts
require('keymaps')
