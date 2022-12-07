require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,
  -- ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = { "go" },
  },
}
