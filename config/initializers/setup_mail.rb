ActionMailer::Base.smtp_settings = {
  # :address              => "email-smtp.us-east-1.amazonaws.com",
  # :port                 => 587,
  # :user_name            => "AKIAIHFOKGMTQSKFPOGA",
  # :password             => ENV['EMAIL_PASSWORD'],
  # :authentication       => "plain",
  # :enable_starttls_auto => true
  :address              => "smtp.zoho.com",
  :port                 => 465,
  :user_name            => Rails.application.secrets.email,
  :password             => Rails.application.secrets.password,
  :authentication       => :login,
  :ssl                  => true,
  :tls                  => true,
  :enable_starttls_auto => true 
}
