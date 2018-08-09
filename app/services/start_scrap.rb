require "nokogiri"
require "open-uri"

class StartScrap

    attr_accessor :url

    def initialize
         @url = "https://coinmarketcap.com/all/views/all"
        @names = crypto_names
        @price = crypto_price
     end

    def crypto_names
        name = []
        doc = Nokogiri::HTML(open(@url)).css(".currency-name-container").each do |names|
            name.push(names.text)
        end
        return name
    end

    def crypto_price
        price = []
        doc = Nokogiri::HTML(open(@url)).css(".price").each do |prices|
            price.push(prices.text)
        end
        return price
    end

    def perform
        a = @names.zip(@price)
        a.to_h
    end
end

a = StartScrap.new
puts a.perform
