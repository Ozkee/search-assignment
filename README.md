# Stack:
- Ruby 3.2.2
- Rails 7.1.0.alpha (main branch)
- Postgresql
- elasticsearch 8.8.1

# Installation

Install OpenSearch
```shell
brew install opensearch
brew services start opensearch
```

Setup Project
```shell
bundle install
rails db:create db:migrate
```

Install data
```shell
rails db:seed
```

# Problem statement
Create an application that helps users find the most relevant prompts based on entered
words

## Objective
Deliver an application prototype to answer the above problem statement.

By prototype, we mean:
- something usable, yet as simple as possible
- UI / design is not important

We expect to use this prototype as a starting point to discuss current implementation details and
ideas for improvement.

## Tech must-haves
- Ruby on Rails
- MySQL or PostgreSQL
- A search engine such as ElasticSearch or any other
- A web interface (can be VERY simple)

## Bonus points
- Application is dockerized
- Application is hosted on Heroku

## Data

- [Data set](https://huggingface.co/datasets/Gustavosta/Stable-Diffusion-Prompts)

## Deliverable
- Source code of the application hosted on Github


## Conclusion
We wish you the best of luck with the assignment and look forward to reviewing your
submission. If you have any questions or concerns, please do not hesitate to reach out to us.