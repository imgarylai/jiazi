require "jiazi/version"

require 'open-uri'
require 'json'

module Jiazi
  
  def self.title
    self.fetch(1)
  end

  def self.paragraph
    self.fetch(1, 400, 500)
  end

  def self.custom(number, min, max)
    self.fetch(number, min, max)
  end

  private

  def self.fetch(number = 1, min = 10, max = 20)
    JSON.load(open("http://more.handlino.com/sentences.json?n=#{number}&limit=#{min},#{max}"))
  end

end
