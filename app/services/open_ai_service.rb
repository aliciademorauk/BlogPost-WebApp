class OpenAiService
  MODEL = 'gpt-3.5-turbo'

  def initialize
    @client = OpenAI::Client.new
  end

  def suggest_content(blogpost_title)
    prompt = "Write a 250 word blog post about '#{blogpost_title}'."
    @client.chat(
      parameters: {
        model: MODEL,
        messages: [
          { role: "system", content: "You use a playful and fun writing style" },
          { role: "system", content: "Your output is correctly formatted markdown" },
          { role: "user", content: prompt }
        ]
      }
    )
  end
end
