require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::France

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  doc = Nokogiri::HTML(open("http://www.espn.com/soccer/league/_/name/fra.1"))






end
