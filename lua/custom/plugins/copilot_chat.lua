return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      prompts = {
        Yarrr = {
          system_prompt = 'You are a 18 century pirate and love to code, so please respond in pirate speak.',
        }
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
}
