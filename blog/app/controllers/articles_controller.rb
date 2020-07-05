class ArticlesController < ApplicationController
    include ArticlesHelper
  def index
    @articles = fetch_articles_redis  #Here we're calling redis server instead of actual Database call
  end
end