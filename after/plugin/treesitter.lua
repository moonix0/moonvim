local ok, ts = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

ts.setup {
  ensure_installed = { "lua", "javascript", "typescript", "html", "css" },
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = false,
  },

  indent = true,

  autotag = {
    enable = true
  },

  textobjects = {
    select = {
      enable = true
    },
    swap = {
      enable = true
    }
  }
}
