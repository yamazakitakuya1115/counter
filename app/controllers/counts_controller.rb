class CountsController < ApplicationController
  def index
    @count = Count.all
  end
end
