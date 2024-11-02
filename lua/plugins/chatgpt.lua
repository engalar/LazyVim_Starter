return {
  -- "jackMort/ChatGPT.nvim",
  "engalar/ChatGPT.nvim",
  url = "git@github.com:engalar/ChatGPT.nvim.git",
  branch = "glm",
  event = "VeryLazy",
  config = function()
    local chatgpt = require("chatgpt")
    chatgpt.setup({
      -- this config assumes you have OPENAI_API_KEY environment variable set
      -- openai_params = {
      --   -- NOTE: model can be a function returning the model name
      --   -- this is useful if you want to change the model on the fly
      --   -- using commands
      --   -- Example:
      --   -- model = function()
      --   --     if some_condition() then
      --   --         return "gpt-4-1106-preview"
      --   --     else
      --   --         return "gpt-3.5-turbo"
      --   --     end
      --   -- end,
      --   model = "gpt-4-1106-preview",
      --   frequency_penalty = 0,
      --   presence_penalty = 0,
      --   max_tokens = 4095,
      --   temperature = 0.2,
      --   top_p = 0.1,
      --   n = 1,
      -- },
    })
    local wk = require("which-key")
    wk.add({
      { "<leader>z", group = "ChatGPT" }, -- ChatGPT group
      { "<leader>zc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
      { "<leader>ze", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction", mode = { "n", "v" } },
      { "<leader>zg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction", mode = { "n", "v" } },
      { "<leader>zt", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
      { "<leader>zk", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords", mode = { "n", "v" } },
      { "<leader>zd", "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring", mode = { "n", "v" } },
      { "<leader>za", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests", mode = { "n", "v" } },
      { "<leader>zo", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code", mode = { "n", "v" } },
      { "<leader>zs", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
      { "<leader>zf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs", mode = { "n", "v" } },
      { "<leader>zx", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code", mode = { "n", "v" } },
      { "<leader>zr", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit", mode = { "n", "v" } },
      {
        "<leader>zl",
        "<cmd>ChatGPTRun code_readability_analysis<CR>",
        desc = "Code Readability Analysis",
        mode = { "n", "v" },
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim", -- optional
    "nvim-telescope/telescope.nvim",
  },
}
