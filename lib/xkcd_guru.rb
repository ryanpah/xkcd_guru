require 'httparty'

module XkcdGuru
  class Client
    attr_accessor :url
    # XkcdGuru::Client.new('http://localhost:3000')
    # XkcdGuru::Client.new('http://xkcd-unofficial-api.herokuapp.com/xkcd')

    def initialize(url)
      @url = url
    end
    # response = HTTParty.get('http://xkcd-unofficial-api.herokuapp.com/xkcd?year=2007')
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
        month_text = "&month=#{month}"
     #{month_text}#{day_text}")
    end

    def comic_by_month(month, day = nil)
     return HTTParty.get("#{@url}?month=#{month}")
    end

    def comic_by_day(day)
     return HTTParty.get("#{@url}?day=#{day}")
    end

    def comic_by_num(num)
     return HTTParty.get("#{@url}?num=#{num}")
    end

    def comic_by_title(safe_title)
     return HTTParty.get("#{@url}?safe_title=#{safe_title}")
    end

    def comic_by_alt(alt)
     return HTTParty.get("#{@url}?alt=#{alt}")
    end
  end
end
end
