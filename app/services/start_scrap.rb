require 'nokogiri'
require 'open-uri'

class StartScrap
    
def initialize
  @arr=[]
end
def perform
  doc = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

  names = doc.css('a.currency-name-container.link-secondary').map{ |name| name.text } #Les noms
  prices = doc.css('a.price').map{ |price| price.text } #Les prix
  
  
  names.length.times do |i|
    @arr += [{ 'name' => names[i], 'price' => prices[i] }]
    i += 1
  end

end


def save
perform

 @arr.each do |a|
  Crypto.create(name: a.values[0], prices: a.values[1])
 end
end

def refresh_each_hour
  t = Time.now #Temps qui va rester figé
  while 0
    t1 = Time.now #Temps qui s'actualise
    if t1.min == t.min && t1.sec == t.sec #Si les minutes et secondes sont égales
      p trader_obscure                    #alors on est rendu à l'heure d'après
    end
  end
end
end
