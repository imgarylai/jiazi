require "jiazi/version"

require 'open-uri'
require 'json'

module Jiazi

  module_function

  def custom(number = 1, min = 10, max = 20)
    if max < min
      "max should be greater or equal to min."
    else
      fetch(number, min, max)
    end
  end

  def title
    custom(1)
  end

  def paragraph
    custom(1, 400, 500)
  end

  def fetch(number, min, max)
    result JSON.load(open("http://more.handlino.com/sentences.json?n=#{number}&limit=#{min},#{max}"))
  end

  def result json
    json["sentences"]
  end

end
