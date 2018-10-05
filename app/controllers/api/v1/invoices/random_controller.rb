class Api::V1::Invoices::RandomController < ApplicationController
  def show
    render json: Invoice.find(Invoice.all.sample.id)
  end
end
