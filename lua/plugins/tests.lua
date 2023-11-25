return {
  "nvim-neotest/neotest",
  ft = { "python", "javascript", "javascriptreact", "typescript" },
  dependencies = {
    "haydenmeade/neotest-jest",
    "marilari88/neotest-vitest",
    "nvim-neotest/neotest-python",
  },
  keys = {
    {
      "<leader>tl",
      function()
        require("neotest").run.run_last()
      end,
      desc = "Run Last Test",
    },
    {
      "<leader>tL",
      function()
        require("neotest").run.run_last({ strategy = "dap" })
      end,
      desc = "Debug Last Test",
    },
    {
      "<leader>tw",
      "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
      desc = "Run Watch",
    },
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "yarn test",
        -- jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      })
    )
    table.insert(opts.adapters, require("neotest-vitest"))
    table.insert(opts.adapters, require("neotest-python")({ python = "python" }))
  end,
}
