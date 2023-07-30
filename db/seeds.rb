# frozen_string_literal: true

require 'rest-client'
require 'json'

puts 'Insert prompts:'

def address
  # limit parameter does not work here. limit is set to 100.
  'https://datasets-server.huggingface.co/rows'
end

def get_prompts(offset = 0)
  response = RestClient.get(
    "#{address}?dataset=Gustavosta%2FStable-Diffusion-Prompts&config=Gustavosta--Stable-Diffusion-Prompts&split=train&offset=#{offset}"
  )

  json_data = JSON.parse(response.body)

  insert_data = []
  json_data['rows'].each do |prompt|
    insert_data << {
      id: prompt['row_idx'] + 1,
      body: prompt['row']['Prompt']
    }
  end

  Prompt.insert_all(insert_data)

  puts "Inserted #{offset + insert_data.length} prompts."

  offset += 100

  if json_data['num_total_rows'] > offset
    get_prompts(offset)
  else
    puts "All data inserted. Indexing prompts."
    Prompt.reindex
    puts "Prompts ready to be searched."
  end
end

get_prompts
