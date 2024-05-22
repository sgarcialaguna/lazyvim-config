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
  -- point venv selector to poetry virtualenvs
  -- {
  --   "linux-cultist/venv-selector.nvim",
  --   opts = {
  --     poetry_path = os.getenv("LOCALAPPDATA") .. "\\pypoetry\\Cache\\virtualenvs",
  --   },
  -- },
}
