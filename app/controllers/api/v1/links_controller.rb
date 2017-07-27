class Api::V1::LinksController < ApplicationController

  def index
    @links = Link.hot_reads
    render json: @links
  end

end
