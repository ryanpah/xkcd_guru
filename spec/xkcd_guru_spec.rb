require 'rspec'
require 'pry'
require_relative '../lib/xkcd_guru'



describe XkcdGuru::Client do

  before do
    @client = XkcdGuru::Client.new('http://localhost:3000/xkcd')
  end

  # before do
  #     stub_request(:get, 'http://xkcd-unofficial-api.herokuapp.com/xkcd?num=1').
  #       to_return(body: fixture('single_xkcd.json'))
  #   end

  # before(:each) do 
  #   @client = XkcdGuru::Client.new('http://localhost:3000/xkcd')
  # end

  describe "#comic_by_date" do

    # before do
    #   stub_request(:get, 'http://xkcd-unofficial-api.herokuapp.com/xkcd?num=602').
    #     to_return(body: fixture('sample_xkcd.rb'))
    # end

    it "displays comic given year" do
      comic = @client.comic_by_date(2009).first['id']
      expect(comic).to eq 602
    end
       
    it "displays comic given year and month" do
      comic = @client.comic_by_date(2009, 12).first['id']
      expect(comic).to eq 670
    end

    it "displays comic given year and month" do
      comic = @client.comic_by_date(2009, 12, 2).first['id']
      expect(comic).to eq 670
    end
  end

  describe "#comic_by_month" do

    it "displays all comics in given month" do
      comic = @client.comic_by_month(3).first
      # binding.pry
      expect((comic)['safe_title']).to eq "Guitar Hero"
    end
  end

  describe "#comic_by_day" do

    it "displays all comics written on given day" do
      comic = @client.comic_by_day(30).first
      expect((comic)['id']).to eq 56
      expect((comic)['year']).to eq 2006
      expect((comic)['safe_title']).to eq "The Cure"
    end
  end

  describe "#comic_by_num" do

    it "finds comic by number" do
      comic = @client.comic_by_num(600).first
      expect((comic)['year']).to eq 2009
      expect((comic)['day']).to eq 22
      expect((comic)['safe_title']).to eq "Android Boyfriend"
    end
  end
end

