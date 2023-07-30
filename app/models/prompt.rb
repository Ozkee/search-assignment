class Prompt < ApplicationRecord
  extend Pagy::Searchkick

  searchkick
end
