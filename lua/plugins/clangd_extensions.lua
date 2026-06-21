-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- lua/plugins/clangd_extensions.lua
return {
  {
    "p00f/clangd_extensions.nvim",
    ft = { "c", "cpp", "objc", "objcpp", "cuda" }, -- 针对 C/C++ 等文件类型加载
    config = function(_, opts) require("clangd_extensions").setup(opts) end,
  },
}
