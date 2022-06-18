require('nightfox').setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      functions = "italic,bold",
    }
  }
})

vim.cmd("colorscheme nordfox")

