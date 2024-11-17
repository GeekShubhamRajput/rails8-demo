class Order < ApplicationRecord
  belongs_to :user

  before_create :generate_order_number

  include ActionView::Helpers::NumberHelper

  def formatted_price
    number_to_currency(price, unit: "$")
  end

  def generate_order_number
    self.order_number = "ORD#{Time.now.strftime('%Y%m%d')}#{SecureRandom.hex(4).upcase}"
  end

end
