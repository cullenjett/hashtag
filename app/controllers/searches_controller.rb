class SearchesController < ApplicationController
  def show
    @tweets = TwitterSearcher.new("##{params[:id]}").results
  end

  def create
    redirect_to search_path(params[:twitter][:search])
  end
end
