if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "yetone/avante.nvim",
  opts = {
    provider = "openai",
    -- Since auto-suggestions are a high-frequency operation and therefore expensive,
    -- it is recommended to specify an inexpensive provider or even a free provider: copilot
    auto_suggestions_provider = "openai",
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
        timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
        extra_request_body = {
          temperature = 0,
          max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
          reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
        },
      },
      ollama = {
        endpoint = "http://127.0.0.1:11434",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          options = {
            temperature = 0.75,
            num_ctx = 20480,
            keep_alive = "5m",
          },
        },
      },
      groq = {
        __inherited_from = "openai",
        api_key_name = "GROQ_API_KEY",
        endpoint = "https://api.groq.com/openai/v1/",
        model = "llama-3.3-70b-versatile",
        disable_tools = true,
        extra_request_body = {
          temperature = 1,
          max_tokens = 32768, -- remember to increase this value, otherwise it will stop generating halfway
        },
      },
      deepseek = {
        __inherited_from = "openai",
        api_key_name = "GROQ_API_KEY",
        endpoint = "https://api.deepseek.com/v1",
        model = "deepseek-chat",
        disable_tools = true,
        extra_request_body = {
          temperature = 0,
          max_tokens = 4096,
        },
      },
    },
  },
}
