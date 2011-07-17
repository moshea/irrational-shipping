class Shipment < ActiveRecord::Base
  validates_numericality_of :height, :message => "can only be a number"
  validates_numericality_of :width, :message => "can only be a number"
  validates_numericality_of :depth, :message => "can only be a number"
  validates_numericality_of :weight, :message => "can only be a number"
  validates_inclusion_of :weight, :in => 0..30, :message => "can only weight between 0 and 30 kg"
end
