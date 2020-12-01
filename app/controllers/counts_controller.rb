class CountsController < ApplicationController
  def index
    @count = Count.all
    @counter = @count.length
  end

  def create
    binding.pry
    Count.create(count_params)
    @counter = Count.all.length
    # render json: { count: @counter }
    redirect_to root_path
  end

  private
  def count_params
    params.permit()
  end
end