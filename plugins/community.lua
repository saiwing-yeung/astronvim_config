return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin", lazy = false },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },

  { import = "astrocommunity.debugging.nvim-bqf" },

  -- Can't get this to work - got b unch of errors
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.note-taking.neorg" },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      --  require("neorg").setup {
      --      -- configuration here
      --  }
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
	  -- SWY
          ["core.keybinds"] = {
            config = {
              default_keybinds = true, -- Generate the default keybinds
              -- neorg_leader = "<leader>," -- This is the default if unspecified
            },
	  },
          -- ["core.ui"] = {},
          -- ["core.ui.calendar"] = {},
        },
      }
    end,
  },

}
