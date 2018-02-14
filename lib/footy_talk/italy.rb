require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::Italy

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  doc = Nokogiri::HTML(open("http://www.espn.com/soccer/league/_/name/ita.1"))






end
