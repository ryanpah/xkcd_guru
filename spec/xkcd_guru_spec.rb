require 'rspec'
require 'pry'
require_relative '../lib/xkcd_guru'



  describe XkcdGuru::Client do

    before do
      @client = XkcdGuru::Client.new('http://localhost:3000/xkcd')
    end
   

  # before(:each) do 
  #   @client = XkcdGuru::Client.new('http://localhost:3000/xkcd')
  # end

  describe "#comic_by_date" do
    it "displays comic given date" do
      # XkcdGuru.configure do |config|
      #   config.key = "key"
      #   config.secret = "secret"
      # end
   
      comic = @client.comic_by_date(2009).first['id']
      
      expect(comic).to eq 602
      # expect(XkcdGuru.key).to eq "key"
      # expect(XkcdGuru.secret).to eq "secret"
    end

  end
end
 