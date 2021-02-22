class NullSubscription
  def has_mentoring?
    false
  end

  def charge(credit_card)
    "You are trying to charge a subscrription that does not exist"
  end

  def price
    0
  end
end