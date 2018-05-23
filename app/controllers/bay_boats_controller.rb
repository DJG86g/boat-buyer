# this will pull all boats from the bay
require 'nokogiri'
require 'open-uri'
require 'pry'
class BayBoatsController < ApplicationController
  def show
    page = Nokogiri::HTML(open('https://www.ebay.com/sch/i.html?_from=R40&_nkw=boats&_sacat=0&LH_BIN=1&_sop=10'))
    all_boats = page.css('.s-item')
    @bay_list = []
    all_boats.each do |boat|
      @bay_list << boat
    end
  end
end
  
