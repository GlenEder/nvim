return {
  'akinsho/toggleterm.nvim',
  name = "toggleterm",
  version = "*",
  config = function() 
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      insert_mappings = false,
      direction = 'float',
      float_opts = {
        border = 'curved',
        width = 120,
        height = 30,
      },

    })
  end
}
