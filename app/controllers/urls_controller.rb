class UrlsController < ApplicationController
  def index
  end

  def create
    @input_url = Url.new(url_params)
    @input_url.shortened_url = @input_url.short_url

    if @input_url.save
      redirect_to url_path(@input_url)
    else
      redirect_to root_path
    end
  end

  def show
    @find = Url.find(params[:id])
  end

  def redirect
    @url = Url.find_by(shortened_url: params[:shortened_url])
    redirect_to @url.user_url
  end

  private

  def url_params
    params.permit(:user_url)
  end
end
