class ArchivesController < ApplicationController

def show
    year = params[:year]
    month = params[:month]
    day = params[:day]

    if (year && month && day)
      @articles = Post.by_day(Time.local(year, month, day)).reverse
    elsif (year && month && !day)
      @articles = Post.by_month(Time.local(year, month)).reverse
    else
      @articles = Post.by_year(year).reverse
    end
  end
end