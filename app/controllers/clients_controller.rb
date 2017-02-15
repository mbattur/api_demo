class ClientsController < ApplicationController
  def index
    render json: {hello: "World!"}
  end
end
