return {
  -- do not yank unless I really want to
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
      override_del = true,
    },
  },
  -- rainbow brackets
  { "hiphish/rainbow-delimiters.nvim" },
  -- buffers are scoped to tabs
  { "stevearc/stickybuf.nvim", config = true },
}
