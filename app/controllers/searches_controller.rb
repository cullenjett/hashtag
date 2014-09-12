class SearchesController < ApplicationController
  def show
    @tweets = TwitterSearcher.new("##{params[:id]}").results.slice(0..14)
  end

  def create
    redirect_to search_path(params[:twitter][:search])
  end
end
