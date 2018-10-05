class Api::V1::Transactions::RandomController < ApplicationController
  def show
    render json: Transaction.find(Transaction.all.sample.id)
  end
end
