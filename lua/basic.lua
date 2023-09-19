-- vim.g.{name}    :golbal variable
-- vim.b.{name}    :buffer variable
-- vim.w.{name}    :windows variable
-- vim.bo.{option} :buffer-local domain
-- vim.wo.{option} :windows-local domain

vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- Enable Hybrid line numbers by setting below two option
vim.wo.number = true         -- 開啟行號
vim.wo.relativenumber = true -- 開啟相對行號

vim.wo.colorcolumn = "80"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.o.mouse = "a"

vim.o.list = true
--vim.o.listchars = "trail:󰞓,eol:󰘌 󰌑 ↴,space:,tab:󰧂󰧂"
vim.o.listchars = "trail:󰞓,eol:↴,space:.,tab:󰧂󰧂"

vim.o.tabstop =4
vim.o.shiftwidth = 4
vim.o.expandtab =false 

