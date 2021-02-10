# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example. Goals reached from this project include:
- Learning how to navigate an existing code-base
- A simulation of the real world for feature and bug-fix requests
- Apply previous learning tactics to research and become familiar with a new paradigm, language and framwork

## Features added
1. Sold Out Badge if a product has 0 quantity
2. Added Categories to Admin Users, ability to view, create and use new categories
3. Added user authentication

## Enhancements and Bugs
1. Improve order page to include details of the items ordered and the email used
2. Correct formatting for product cost and order totals
3. Fixed Admin Security to access admin functionality
4. Fixed Checking out with empty cart to show friendly message and link to home page

## Screenshots
![Jungle Home Page](https://github.com/ohoktnt/jungle-rails/blob/master/docs/Jungle-Homepage.png?raw=true)

![Jungle Order Details Page](https://github.com/ohoktnt/jungle-rails/blob/master/docs/Jungle-OrderDetails.png?raw=true)

![Jungle Admin Categories Page](https://github.com/ohoktnt/jungle-rails/blob/master/docs/Jungle-Admin-Categories.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
