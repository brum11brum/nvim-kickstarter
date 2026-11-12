vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function()
    local client = vim.lsp.start {
      name = 'educationalsp',
      cmd = { '/home/marcin/Coding/go/educationalsp/main' },
    }

    if not client then
      vim.notify 'hey, buba'
      return
    end

    vim.lsp.buf_attach_client(0, client)
  end,
})
