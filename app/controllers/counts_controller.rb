class CountsController < ApplicationController
  def index
    @count = Count.all
    @counter = @count.length
  end

  def create
    Count.create(count_params)
    redirect_to root_path
  end

  private
  def count_params
    params.permit()
  end
end