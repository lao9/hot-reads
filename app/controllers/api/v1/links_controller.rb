class Api::V1::LinksController < ApplicationController

  def index
    @links = Link.hot_reads
    render json: @links
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      render json: @link
    else
      render json: @link.errors.full_messages, status: 500
    end
  end

  private

    def link_params
      params.permit(:url)
    end

end
