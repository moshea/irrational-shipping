class Payment
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :id, :card, :card_number, :expiry_month, :expiry_year, :security
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def save
    return true
  end
  
  def persisted?
    false
  end
end
