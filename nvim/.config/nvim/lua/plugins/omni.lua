return {
  'getomni/neovim',
  name='omni',
  lazy = false,     -- Força o carregamento na inicialização
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('omni')
  end

}
