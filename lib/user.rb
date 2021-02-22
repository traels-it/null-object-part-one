class User
  include ActiveModel::Model
  attr_accessor :credit_card, :subscription

  def charge
      subscription.charge(credit_card)
  end

  def has_mentoring?
    subscription.has_mentoring? 
  end

  def price
    subscription.price 
  end

  private

  def subscription
    @subscription || NullSubscription.new
  end
end
