require 'httparty'
require 'pry'
require_relative './lib/xkcd_guru'

client = XkcdGuru::Client.new('http://xkcd-unofficial-api.herokuapp.com/xkcd?api_key=foobar&') 

c1 = client.comic_by_date(2009)
binding.pry


