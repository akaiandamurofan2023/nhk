class StaticPagesController < ApplicationController
  def home
  end
  

  def search
    require 'open-uri'

    @search = params[:value]
    @search[:date] = (params[:date].to_date + @search[:after].to_i.days).strftime("%Y-%m-%d")
    
    res = open("http://api.nhk.or.jp/v2/pg/list/#{@search[:area]}/#{@search[:service]}/#{@search[:date]}.json?key=k7SdiUtDRyBAUTrScTh4KAngNpJnoC6U")
    @result = (ActiveSupport::JSON.decode res.read)
    render :home
  end
end
