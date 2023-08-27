vim.api.nvim_create_autocmd("User", {
  pattern = "MasonToolsStartingInstall",
  callback = function()
    vim.schedule(function()
      print("mason-tool-installer is starting")
    end)
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "MasonToolsUpdateCompleted",
  callback = function(e)
    vim.schedule(function()
      -- print the table that lists the programs that were installed
      print("fail to install: " .. vim.inspect(e.data))
    end)
  end,
})

-- formatter
vim.api.nvim_create_augroup("FormatAutogroup", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "FormatAutogroup",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
