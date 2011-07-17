class WelcomeController < ApplicationController
  
  def index
    @shipment = Shipment.new
  end
end
