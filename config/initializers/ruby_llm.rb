require "ruby_llm"

RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
  config.anthropic_api_key = ENV["ANTHROPIC_API_KEY"]
  config.gemini_api_key = ENV["GEMINI_API_KEY"]
  config.deepseek_api_key = ENV["DEEPSEEK_API_KEY"]

  # Optional: Set default models
  config.default_model = ENV["DEFAULT_LLM_MODEL"] # gemini-2.0-flash "gpt-4o-mini"               # Default chat model
  config.default_embedding_model = "text-embedding-3-small"  # Default embedding model
  config.default_image_model = "dall-e-3"            # Default image generation model

  # Optional: Configure request settings
  config.request_timeout = 120  # Request timeout in seconds
  config.max_retries = 3        # Number of retries on failures
end
