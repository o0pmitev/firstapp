if Rails.env.production?
    Rails.configuration.stripe = {
      publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
      secret_key: ENV['STRIPE_SECRET_KEY']
    }
  else
    Rails.configuration.stripe = {
      publishable_key: 'pk_test_Nz0WBK2iDkomks53OU6AdrPp',
      secret_key: 'sk_test_gKmaqYs5Do4X60RyYshk4Vqw'
    }
  end
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]