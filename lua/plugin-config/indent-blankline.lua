local status, ibl = pcall(require, "ibl")
if not status then
  vim.notify("没有找到 indent_blankline")
  return
end

ibl.setup({
  debounce = 100,
  indent = { char = '┆' },
  whitespace = { highlight = { "Whitespace" } },
  scope = { exclude = {language = { "lua" } } },
})
