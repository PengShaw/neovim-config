function lazySetup()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.notify("Downloading lazy.nvim ...")
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
    })
    vim.notify("Finished lazy.nvim download.")
  end
  vim.opt.rtp:prepend(lazypath)
end

local M = {}

function M.setup()
  --- basic config ---
  require "config.options"
  --- lazy.nvim
  lazySetup()
  --- plugins ---
  --- load plugins
  require("lazy").setup("plugins")
end

return M
