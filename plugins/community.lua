return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", lazy = false },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },

  -- Can't get this to work - got b unch of errors
  -- { import = "astrocommunity.completion.copilot-lua" },
}
