class ClientMailer < ActionMailer::Base
  default to: "bmartin@rendartstl.com"

  def client_email(client_email, message)
    @client = client_email
    @message = message
    mail(subject: "A potential client!", from: client_email)
  end
end
