class OpenAiController < ApplicationController
  def suggest_content
    response = OpenAiService.new.suggest_content(params[:title])

    if response['choices'].present?
      @response_content = response['choices'].first['message']['content']
    else
      flash.now[:alert] = "Sorry, failed to suggest content. Please try again later..."
      @response_content = flash[:alert]
    end

    respond_to do |format|
      # format.html { render plain: @response_content }
      format.turbo_stream { render turbo_stream: turbo_stream.replace("suggestion", partial: "open_ai/suggest_content", locals: { response_content: @response_content }) }
    end
  end
end
  