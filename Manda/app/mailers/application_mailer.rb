class ApplicationMailer < ActionMailer::Base
	require 'sendgrid-ruby'
  default from: 'from@example.com'
  layout 'mailer'
end
