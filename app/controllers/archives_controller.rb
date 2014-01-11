class ArchivesController < ApplicationController

def show
    year = params[:year]
    month = params[:month]
    day = params[:day]

    if (year && month && day)
      @articles = Article.published.by_day(Time.local(year, month, day)).order('created_at desc').page(params[:page]).per(12).reverse
    elsif (year && month && !day)
      @articles = Article.published.by_month(Time.local(year, month)).order('created_at desc').page(params[:page]).per(12).reverse
    else
      @articles = Article.published.by_year(Time.local(year)).order('created_at desc').page(params[:page]).per(12).reverse
    end
  end
end