# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
RendArt::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV["SENDGRID_USERNAME"],
  :password       => ENV["SENDGRID_PASSWORD"],
  :domain         => 'http://limitless-fjord-4880.herokuapp.com/',
  :enable_starttls_auto => true
}
