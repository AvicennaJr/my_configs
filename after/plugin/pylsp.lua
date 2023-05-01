require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        black = {
          enabled = true,
          line_length = 78,
        },
        rope_autoimport = {
          enabled = true
          },
        pycodestyle = {
          ignore = {'W391', 'E203', 'E266', 'E501', 'W503', 'F403', 'F841'},
          maxLineLength = 78,
          convention = {'google'}
        }
      }
    }
  }
}
