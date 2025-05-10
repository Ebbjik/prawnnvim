-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "vue", "javascript", "typescript", "html", "css", "svelte" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
