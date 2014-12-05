require "jiazi/version"

require "open-uri"
require "json"
require "net/https"
require "uri"

module Jiazi

  @uri = "http://more.handlino.com/"

  module_function

  def custom(number = 1, min = 10, max = 20)
    if max < min
      "max should be greater or equal to min."
    else
      fetch(number, min, max)
    end
  end

  ["title", "paragraph"].each do |n|
    define_method "get_#{n}" do  
      result(from_file("#{n}")).sample
    end
  end

  def from_file type
    file = File.read(File.expand_path(File.dirname(__FILE__)) + "/data/#{type}.json")
    JSON.parse(file)
  end

  def fetch(number, min, max)
    if live?
      JSON.load(open(@uri + "sentences.json?n=#{number}&limit=#{min},#{max}"))
    else
      "Please use offline data."
    end
  end

  def download_title
    data = custom(100, 10, 20)
    download_offline_data(data, "title")
  end

  def download_paragraph
    data = custom(100, 400, 1000)
    download_offline_data(data, "paragraph")    
  end

  def download_offline_data(json, filename)
    begin
      file = File.open(File.expand_path(File.dirname(__FILE__)) + "/data/#{filename}.json", "w")
      file.write(json.to_json)
    rescue IOError => e
      puts "An error occurred: #{$!}"
    ensure
      file.close unless file == nil
    end
  end

  def result json
    json["sentences"]
  end

  def live?
    res = Net::HTTP.get_response(URI(@uri))  
    res.code == "200"
  end

end
