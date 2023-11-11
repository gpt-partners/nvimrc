local M = {}

M.general = {
  n = {
    [","] = { "<cmd> w <CR>", "Save file" },
    ["-"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
    },
    ["<leader>D"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Toggle transparency",
    },
  },
}

M.nvterm = {
  plugin = true,

  t = {
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<C-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<C-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    ["<C-t>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<C-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<C-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },
}

M.neotest = {
  n = {
    ["<leader>tA"] = {
      function()
        require("neotest").run.run(vim.loop.cwd())
      end,
      "Run All Test Files",
    },
    ["<leader>td"] = {
      function()
        require("neotest").run.run { strategy = "dap" }
      end,
      "Debug nearest test",
    },

    ["<leader>ts"] = {
      function()
        require("neotest").summary.toggle()
      end,
      "Toggle Summary",
    },
    ["<leader>to"] = {
      function()
        require("neotest").output.open { enter = true, auto_close = true }
      end,
      "Show Output",
    },
    ["<leader>tO"] = {
      function()
        require("neotest").output_panel.toggle()
      end,
      "Toggle Output Panel",
    },
    ["<leader>tS"] = {
      function()
        require("neotest").run.stop()
      end,
      "Stop",
    },
  },
}

M.dap = {
  n = {
    ["<leader>tb"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>tc"] = {
      function()
        require("dap").repl.open()
      end,
      "Open REPL",
    },
  },
}

return M
