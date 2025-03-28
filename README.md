# RubyLLMPoC

This project demonstrates the integration of Large Language Models (LLMs) within a Ruby on Rails application. It
leverages the `ruby_llm` gem to interact with LLMs, enabling features like:

* **Text generation:**  Creating human-quality text for various purposes, such as writing articles, summaries, or
  creative content.
* **Code generation:**  Generating Ruby code snippets or entire modules based on natural language prompts.
* **Question answering:** Providing answers to questions based on a given context or knowledge base.
* **Translation:**  Translating text between different languages.

## Features

* **Interactive prompt:**  Users can input prompts and receive real-time responses from the LLM.
* **Customizable models:**  Support for different LLM providers and models, allowing users to select the best model for
  their specific needs.
* **Contextual awareness:** The ability to provide context to the LLM, improving the relevance and accuracy of its
  responses.
* **Output formatting:**  Options for formatting the LLM's output, such as generating HTML or Markdown.

## Getting Started

1. **Clone the repository:** `git clone <repository_url>`
2. **Install dependencies:** `bundle install`
3. **Set up environment variables:** Create a `.env` file and configure the necessary API keys and settings for your
   chosen LLM provider.
4. **Run the application:** `rails server`

## Example Usage

```ruby
prompt = "Write a short story about a robot learning to love."
response = Chat.ask.create(params[:content]) # RubyLLM.chat.ask(params[:content])
puts response
```

## Future Development

* **Improved error handling:**  Providing more informative error messages and handling edge cases.
* **Enhanced user interface:**  Creating a more user-friendly interface for interacting with the LLM.
* **Integration with other services:**  Connecting the LLM to other services, such as databases or APIs.

## Contributing

Contributions are welcome! Please submit pull requests or open issues for any bugs or feature requests.
