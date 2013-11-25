require 'pry'
require_relative './lib/xkcd_guru'

cl = XkcdGuru::Client.new('http://localhost:3000/')

puts cl.comic_by_date(2009)



