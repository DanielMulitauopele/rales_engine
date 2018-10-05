class Api::V1::Customers::RandomController < ApplicationController
  def show
    render json: Customer.find(Customer.all.sample.id)
  end
end
