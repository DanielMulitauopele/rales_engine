class Api::V1::Merchants::MostItemsController < ApplicationController
  def index
    render json: Merchant.most_items_sold_ranked(params[:quantity])
  end
end
