# Optionally override some pagy default with your own in the pagy initializer
Pagy::DEFAULT[:items] = 10        # items per page
Pagy::DEFAULT[:size]  = [1,4,4,1] # nav bar links
# Better user experience handled automatically

require 'pagy/extras/bootstrap'
require 'pagy/extras/overflow'
require 'pagy/extras/searchkick'

Searchkick.extend Pagy::Searchkick

Pagy::DEFAULT[:overflow] = :empty_page
