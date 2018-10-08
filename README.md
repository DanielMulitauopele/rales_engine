# README

## Project Description

This e-commerce API is a submission for the first project for Mod 3 students at the Turing School of Software and Design. Students are expected to design and build an API that displays JSON data for Merchant, Item, Invoice, Invoice Item, Customer, and Transaction classes. In addition, students are expected to use ActiveRecord to manipulate data into useable business logic.

The goals for this project are as follows:

* Build Single-Responsibility controllers to provide a well-designed and versioned API.

* Use controller tests to drive your design.

* Use Ruby and ActiveRecord to perform more complicated business intelligence.

## Setup and Implementation

To setup, follow the instructions below:

* Change into new directory, and run "git clone https://github.com/DanielMulitauopele/rales_engine"
* Run rake db:reset
* Run rake db:migrate
* Run rake import:data
* Run bundle/bundle update
* Run rspec to ensure that all tests are passing

To use, open a local server using rails s, access the API by changing the url. The following URI structure may prove useful:

* /api/v1/merchants
* /api/v1/merchants/find?name=(enter the merchant name here)
* /api/v1/merchants/find?id=(enter the merchant id here)
* /api/v1/merchants/find?created_at=(enter created_at time here, format 2018-09-09 00:00:00)
* /api/v1/merchants/random
* /api/v1/merchants/:merchant_id/items
* /api/v1/merchants/most_revenue?quantity=x (x is the number of merchants you want to return)

## Tools and Dependencies

* Ruby 2.4.1
* Rails 5.1.6
* Rspec-rails gem
* Factory_bot_rails gem
* Database_cleaner gem
* Faker gem
* Shoulda-matchers gem
* Simplecov gem
* Pry gem
* Awesome_print gem
* Active_model_serializers gem

## Project Challenges

Despite having just learned how to build API's, there were few challenges with setting up the controllers, routes, and tests. The significant challenges were dealing with ActiveRecord, and using it to manipulate the data required. 

## Project Author
* Daniel Mulitauopele
