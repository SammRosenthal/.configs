return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
      opts_extend = { "ensure_installed" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      auto_install = true,
      ensure_installed = {
        "c", "lua", "rust", "javascript", "typescript", "svelte", "java", "astro", "css", "tsx"
      },
    })
  end
}
