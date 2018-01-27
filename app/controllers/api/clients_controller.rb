class Api::ClientsController < ApplicationController

  def index
    clients = Client.all
    render json: clients
  end

  def create
    client = Client.new(client_params)
    if client.save
      render json: client, status: :created
    else
      render json: client.errors, status: :unprocessable_entity
    end
  end

  def update
    client = Client.find(params[:id])
    if client.update(client_params)
      render json: client, status: :ok
    else
      render json: client.errors, status: :unprocessable_entity
    end
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :active)
  end

end
