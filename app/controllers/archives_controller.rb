class ArchivesController < ApplicationController

def show
    year = params[:year]
    month = params[:month]
    day = params[:day]

    if (year && month && day)
      @articles = Article.by_day(Time.local(year, month, day)).reverse
    elsif (year && month && !day)
      @articles = Article.by_month(Time.local(year, month)).reverse
    else
      @articles = Article.by_year(Time.local(year)).reverse
    end
  end
end