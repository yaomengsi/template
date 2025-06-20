-- don't do anything in non-vscode instances
if not vim.g.vscode then return {} end

---@type LazySpec
return {
  -- add a few keybindings
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader><Leader>"] = ":echo 'Leader key works!'<CR>",
          ["<Leader>ff"] = "<CMD>Find<CR>",
          ["<Leader>fw"] = function() require("vscode").action "workbench.action.findInFiles" end,
          ["<Leader>ls"] = function() require("vscode").action "workbench.action.gotoSymbol" end,
        },
      },
    },
  },
  -- disable colorscheme setting
  { "AstroNvim/astroui", opts = { colorscheme = false } },
  -- disable treesitter highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { highlight = { enable = false } },
  },
}
