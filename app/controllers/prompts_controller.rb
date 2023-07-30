class PromptsController < ApplicationController
  include Pagy::Backend

  def index
    @pagy, @prompts = pagy(Prompt.all)
  end
end
