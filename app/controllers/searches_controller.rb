class SearchesController < ApplicationController
  def show
    @tweets = TwitterClient.new.search("##{params[:id]}").take(15)
  end

  def create
    redirect_to search_path(params[:twitter][:search])
  end
end
