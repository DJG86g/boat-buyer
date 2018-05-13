require 'nokogiri'
require 'open-uri'
require "pry"
class HomesController < ApplicationController
  def index
    page = Nokogiri::HTML(open('https://boston.craigslist.org/d/boats/search/boo'))
    # all_boats = page.css(".result-row").css(".a href")
    # each_boat = page.css(".result-row").css("a").
    # link = all_boats.first.css("p").first.css("a").first.attributes.first.last.value
    # Nokogiri::HTML(open(link))
    # show = Nokogiri::HTML(open(link))
    # show.css("img").first


    all_boats = page.css(".result-row")
    @boat_sell = []
    all_boats.each do |boat|
    @boat_sell << boat.css("a").first.attributes
    end
  end
end
