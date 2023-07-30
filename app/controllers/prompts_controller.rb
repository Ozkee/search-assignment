class PromptsController < ApplicationController
  include Pagy::Backend

  def index
    if params[:search].present?
      @count_label = 'Found prompts'
      collection = Prompt.pagy_search(params[:search])
      @pagy, @prompts = pagy_searchkick(collection)
    else
      @count_label = 'All prompts'
      collection = Prompt.all
      @pagy, @prompts = pagy(collection)
    end
  end
end
