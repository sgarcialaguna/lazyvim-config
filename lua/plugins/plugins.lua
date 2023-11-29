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
  -- Make mini.surround work close to vim-surround
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "ys",
        delete = "ds",
        find = "",
        find_left = "",
        highlight = "",
        replace = "cs",
        update_n_lines = "",

        -- Add this only if you don't want to use extended mappings
        suffix_last = "",
        suffix_next = "",
      },
      search_method = "cover_or_next",
    },
  },
  -- Git integration
  { "tpope/vim-fugitive", vscode = true },
  -- point venv selector to poetry virtualenvs
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      poetry_path = os.getenv("LOCALAPPDATA") .. "\\pypoetry\\Cache\\virtualenvs",
    },
  },
}
