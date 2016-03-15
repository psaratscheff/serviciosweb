class StatusController < ApplicationController
  def index
    render nothing: true, status: 201
  end
end
