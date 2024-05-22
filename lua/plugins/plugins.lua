return {
  -- do not yank unless I really want to
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
      override_del = true,
    },
    vscode = true,
  },
  -- rainbow brackets
  { "hiphish/rainbow-delimiters.nvim" },
  -- buffers are scoped to tabs
  { "stevearc/stickybuf.nvim", config = true },
  -- Git integration
  { "tpope/vim-fugitive", vscode = true },
  {
    "echasnovski/mini.surround",
    enabled = false,
  },
  {
    "kylechui/nvim-surround",
    tag = "2.1.8", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
    vscode = true,
  },

  -- point venv selector to poetry virtualenvs
  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   opts = {
  --     poetry_path = os.getenv("LOCALAPPDATA") .. "\\pypoetry\\Cache\\virtualenvs",
  --   },
  -- },
}
