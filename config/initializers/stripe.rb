Rails.configuration.stripe = {
  :publishable_key => 'pk_test_y40CBTE51TEBp9Q7A7CwwCXD',
  :secret_key      => 'sk_test_HC1qwshpbe35cMqtGV5e9sLe'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
