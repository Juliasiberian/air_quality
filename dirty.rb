require "faraday" # downloading web doc
require "nokogiri" # parsing string

class Dirty
  def initialize(city)
    @city = city.downcase
  end
  
  def call 
    response = Faraday.get(link)
    page_content = response.body
    doc = Nokogiri::HTML(page_content)
    doc.search(".aqi-value__value").text # css класс
  end  

  def link
    case @city
    when "murmansk"
      "https://www.iqair.com/ru/russia/#{@city}"
    when "krasnoyarsk"
      "https://www.iqair.com/ru/russia/krasnoyarsk-krai/#{@city}"
    when "budapest"
      "https://www.iqair.com/ru/hungary/central-hungary/#{@city}"
    else 
      "https://www.iqair.com/ru/russia/#{@city}"
    end
  end
end
