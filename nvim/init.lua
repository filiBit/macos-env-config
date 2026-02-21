vim.wo.relativenumber = true

-- Create an event handler for the FileType autocommand
vim.api.nvim_create_autocmd('FileType', {
  -- This handler will fire when the buffer's 'filetype' is "python"
  pattern = 'typescript',
  callback = function(args)
    vim.lsp.start({
      name = 'deno-lsp-client',
      cmd = {'deno', 'lsp'},
      -- Set the "root directory" to the parent directory of the file in the
      -- current buffer (`args.buf`) that contains either a "setup.py" or a
      -- "pyproject.toml" file. Files that share a root directory will reuse
      -- the connection to the same LSP server.
      root_dir = vim.fs.root(args.buf, {'deno.json', 'deno.jsonc'}),
    })
  end,
})
