local M = {}
M.copilot = {
  panel = { enabled = false },
  filetypes = {
    markdown = true,
    help = true,
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "bash",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "typescript-language-server",
    "html-lsp",
    "prettierd",
    "isort",
    "black",
    "stylua",
    "eslint_d",
  },
}

M.conform = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    yaml = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
  },
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
}

return M
