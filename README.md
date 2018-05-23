# README

[![Build Status](https://codeship.com/projects/6e781170-352a-0136-09f3-3e151ebb66ce/status?branch=master)
[![Code Climate](https://codeclimate.com/github/DJG86g/boat-buyer/badges/gpa.svg)](https://codeclimate.com/github/DJG86g/boat-buyer)
[![Coverage Status](https://coveralls.io/repos/github/DJG86g/boat-buyer/badge.svg?branch=master)](https://coveralls.io/github/DJG86g/boat-buyer?branch=master)

# Boat-Buyer

* Ruby version - ``` 2.3.3 ```

* Rails version - ``` 5.2.0 ```

* System dependencies

* Configuration

* Database creation - first you need to install postgres if not already installed. then you can run ``` bundle exec rake db:create ```

* Database initialization

* How to run the test suite - run via ``` bundle exec rspec ```

the "marina" show page will show a list of boats which you can look at and message the owner. it will utilize actioncable for messaging.

the goal of this open source project is to help new boaters find fun locations to travel to. It will utilize the google maps api to select points on a map with  latitude and longitude. It will also use a weather api to give weather forcast for the area you start out and the area you will be traveling to.
