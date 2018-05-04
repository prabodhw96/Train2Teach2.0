Devise.setup do |config|

  config.mailer_sender = 'Prabodh @ Train2Teach <no-reply@train2teach.com>'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '504971711974-97diei8jot6472vqbmagb1mtnik9k1c7.apps.googleusercontent.com', 'ogVt63MR4AUa2NzIHURxFxy4', {access_type: "offline", approval_prompt: ""}

end
