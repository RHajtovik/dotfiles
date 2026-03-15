---@diagnostic disable: undefined-global
return {
  { "b0o/schemastore.nvim", lazy = false },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "b0o/schemastore.nvim" },
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.setup = opts.setup or {}

      -- Python
      opts.servers.pyright = {
        settings = {
          python = {
            analysis = {
              extraPaths = { vim.fn.getcwd() },

              venvPath = ".",
              venv = ".venv",
              typeCheckingMode = "standard", -- or "strict"
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace",
            },
          },
        },
      }

      -- TS / JS
      opts.servers.ts_ls = opts.servers.ts_ls or {}
      opts.servers.ts_ls.filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      }

      -- ESLint
      opts.servers.eslint = opts.servers.eslint or {}
      opts.servers.eslint.settings =
        vim.tbl_deep_extend("force", opts.servers.eslint.settings or {}, { workingDirectory = { mode = "auto" } })

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
