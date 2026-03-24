---@diagnostic disable: undefined-global
return {
  { "b0o/schemastore.nvim" },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "b0o/schemastore.nvim" },
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.setup = opts.setup or {}

      local on_attach = function(_, bufnr)
        vim.lsp.inlay_hint.enable(false, { bufnr = bufnr })
      end

      -- Python
      opts.servers.pyright = {
        on_attach = on_attach,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "standard",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "openFilesOnly",
            },
          },
        },
      }

      -- Keep these only if every project uses .venv at repo root
      opts.servers.pyright.settings.python.venvPath = "."
      opts.servers.pyright.settings.python.venv = ".venv"

      -- TS / JS
      opts.servers.ts_ls = {
        on_attach = on_attach,
      }

      -- ESLint
      opts.servers.eslint = {
        on_attach = on_attach,
      }

      opts.setup.eslint = function(_, server_opts)
        server_opts.filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "svelte",
          "astro",
        }
        return false
      end

      -- JSON
      opts.servers.jsonls = opts.servers.jsonls or {}
      opts.setup.jsonls = function(_, server_opts)
        server_opts.settings = server_opts.settings or {}
        server_opts.settings.json = server_opts.settings.json or {}
        server_opts.settings.json.schemas = require("schemastore").json.schemas()
        server_opts.settings.json.validate = { enable = true }
        return false
      end
    end,
  },
}
