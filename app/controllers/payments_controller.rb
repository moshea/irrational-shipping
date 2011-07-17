class PaymentsController < ApplicationController
  def show
    @shipment = Shipment.find(params[:shipment_id])
  end

  def new
    @shipment = Shipment.find(params[:shipment_id])
    @payment = Payment.new
  end
  
  def create
    @shipment = Shipment.find(params[:shipment_id])
    @payment = Payment.new(params[:payment])
    @shipment.paid = @payment.save
    
    respond_to do |format|
      if @shipment.paid
        format.html{ redirect_to shipment_payment_path(@shipment.id, 1) }
      else
        format.html{ redirect_to new_shipment_payments_path(@shipment) }
      end
    end
  end
end