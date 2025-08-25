return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken",
    opts = {
      modle = 'claude-sonnet-4',
      temperature = 0.2,
      window = {
        layout = 'float',
        relative = 'editor',
        width = 0.7,
        height = 0.7,
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
