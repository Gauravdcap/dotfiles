
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")


--Neovide config
if vim.g.neovide then 
	local alpha = function()
		return string.format("%x",math.floor(255 * vim.g.transparency or 0.8))
	end
	vim.g.neovide_transparency = 0.5
	vim.g.transparency = 0.8
	vim.g.neovide_background_color = "#0f1117" .. alpha()
    
	vim.g.neovide_cursor_vfx_mode = "Railgun"
end

