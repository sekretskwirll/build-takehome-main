# About this Rails app

This Rails application is an API that serves a list of vegetables and their ratings!

The application has a postgres database and includes just three tables: users, vegetables, and ratings.

## Prerequisites

If you wish to run this app locally, you will need to have Postgres, Ruby, and Gems (Ruby's packaging system).

## Setup instructions

1. `bundle install` to add dependencies.
2. `bundle exec rake db:create` to create the databases.
3. `bundle exec rake db:migrate` to run the migrations.

## Tests

There aren't currently any tests, but rspec is set up.

To run tests with rspec, use `bundle exec rspec`.

## Ruby version

2.7.1

## Rails version

6.0
