require 'httparty'

response = HTTParty.get('http://xkcd-unofficial-api.herokuapp.com/xkcd?year=2007')
#this gets comics 1-60
# all_comics = {};
# for num in 0..60 
#    all_comics[num] = HTTParty.get("http://xkcd.com/#{num}/info.0.json")
# end

def comic_by_date(year, month = nil, day = nil)
  if day
    day_text = "&day=#{day}"
  end
  if month
    month_text = "&month=#{month_text}"
  end
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?year=#{year}#{month_text}#{day_text}")
end

def comic_by_month(month, day = nil)
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?month=#{month}")
end

def comic_by_day(day)
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?day=#{day}")
end

def comic_by_num(num)
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?num=#{num}")
end

def comic_by_title(safe_title)
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?safe_title=#{safe_title}")
end

def comic_by_alt(alt)
 return HTTParty.get("http://xkcd-unofficial-api.herokuapp.com/xkcd?alt=#{alt}")
end

