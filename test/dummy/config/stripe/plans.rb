Stripe.plan :gold do |plan|
   plan.name = 'Solid Gold'
   plan.amount = 699
   plan.interval = 'month'
end

Stripe.plan "Solid Gold".to_sym do |plan|
   plan.constant_name = 'SOLID_GOLD'
   plan.name = 'Solid Gold'
   plan.amount = 699
   plan.interval = 'month'
end

Stripe.plan :alternative_currency do |plan|
   plan.name = 'Alternative Currency'
   plan.amount = 699
   plan.interval = 'month'
   plan.currency = 'cad'
end

Stripe.plan :metered do |plan|
  plan.name = 'Metered'
  plan.amount = 699
  plan.interval = 'month'
  plan.usage_type = 'metered'
  plan.aggregate_usage = 'max'
  plan.billing_scheme = 'per_unit'
end

Stripe.plan :tiered do |plan|
  plan.name = "Tiered"
  plan.billing_scheme = "tiered"
  plan.interval = "month"
  plan.tiers = [
    {
      amount: 0,
      up_to: 10
    },
    {
      amount: 1000,
      up_to: nil
    }
  ]
  plan.tiers_mode = "graduated"
end

Stripe.plan :tiered_with_flat_amount do |plan|
  plan.name = "Tiered With Flat Amount"
  plan.billing_scheme = "tiered"
  plan.interval = "month"
  plan.tiers = [
    {
      amount: 0,
      flat_amount: 10000,
      up_to: 10
    },
    {
      amount: 1000,
      flat_amount: 0,
      up_to: nil
    }
  ]
  plan.tiers_mode = "graduated"
end
