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
            pythonPath = ".venv/bin/python",
            analysis = {
              typeCheckingMode = "standard",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "openFilesOnly",
              diagnosticSeverityOverrides = {
                reportUnusedImport = "none",
                reportUnusedVariable = "none",
                reportUnusedClass = "none",
                reportUnusedFunction = "none",
                reportMissingImports = "none",
              },
            },
          },
        },
      }

      opts.servers.vtsls = opts.servers.vtsls or {}
      opts.servers.vtsls.on_attach = on_attach
      opts.servers.vtsls.settings = vim.tbl_deep_extend("force", opts.servers.vtsls.settings or {}, {
        javascript = {
          inlayHints = {
            enumMemberValues = { enabled = false },
            functionLikeReturnTypes = { enabled = false },
            parameterNames = { enabled = "none" },
            parameterTypes = { enabled = false },
            propertyDeclarationTypes = { enabled = false },
            variableTypes = { enabled = false },
          },
        },
        typescript = {
          inlayHints = {
            enumMemberValues = { enabled = false },
            functionLikeReturnTypes = { enabled = false },
            parameterNames = { enabled = "none" },
            parameterTypes = { enabled = false },
            propertyDeclarationTypes = { enabled = false },
            variableTypes = { enabled = false },
          },
        },
      })

      -- Tailwind CSS
      opts.servers.tailwindcss = {
        on_attach = on_attach,
      }

      -- JSON
      opts.servers.jsonls = opts.servers.jsonls or {}
      opts.setup.jsonls = function(_, server_opts)
        server_opts.settings = server_opts.settings or {}
        server_opts.settings.json = server_opts.settings.json or {}
        server_opts.settings.json.schemas = require("schemastore").json.schemas()
        server_opts.settings.json.validate = { enable = true }
        return false
      end

      -- YAML
      opts.servers.yamlls = {
        on_attach = on_attach,
        settings = {
          yaml = {
            schemaStore = { enable = true },
          },
        },
      }

      -- Dockerfile
      opts.servers.dockerls = {
        on_attach = on_attach,
      }

      -- Docker Compose
      opts.servers.docker_compose_language_service = {
        on_attach = on_attach,
      }

      -- Lua
      opts.servers.lua_ls = {
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            hint = { enable = false },
            workspace = {
              checkThirdParty = false,
            },
          },
        },
      }

      -- TOML
      opts.servers.taplo = {
        on_attach = on_attach,
      }
    end,
  },
}
