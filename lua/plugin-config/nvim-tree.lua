-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("没有找到 nvim-tree")
  return
end

-- 列表操作快捷键
local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup({
  -- 完全禁止内置netrw
  disable_netrw = true,
  
  -- Icon indicates when a file is:
  -- - ✗  unstaged or folder is dirty
  -- - ✓  staged
  -- - ★  new file
  -- - ✓ ✗ partially staged
  -- - ✓ ★ new file staged
  -- - ✓ ★ ✗ new file staged and has unstaged modifications
  -- - ═  merging
  -- - ➜  renamed
  git = {
    enable = true,
  },
 
  -- project plugin 需要这样设置
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  filters = {
    -- 隐藏 .文件
    dotfiles = true,
    -- 隐藏 node_modules 文件夹
    -- custom = { "node_modules" },
  },
  view = {
    -- 宽度
    width = 34,
    -- 也可以 'right'
    side = "left",
    -- 隐藏根目录
    hide_root_folder = false,
    -- 自定义列表中快捷键
    mappings = {
      -- 只用内置快捷键
      custom_only = true,
      list = list_keys,
    },
    -- 不显示行数
    number = false,
    relativenumber = false,
    -- 显示图标
    signcolumn = "yes",
  },
  actions = {
    open_file = {
      -- 首次打开大小适配
      resize_window = true,
      -- 打开文件时关闭 tree
      quit_on_open = false,
    },
  },
  -- wsl install -g wsl-open
  -- https://github.com/4U6U57/wsl-open/
  system_open = {
    -- mac
    cmd = "open",
    -- windows
    -- cmd = "wsl-open",
  },
})
