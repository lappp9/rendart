class ClientMailer < ActionMailer::Base
  #default to: "bmartin@rendartstl.com"
  default to: "lappp9@gmail.com"

  def client_email(client_email, message)
    @client = client_email
    @message = message
    mail(subject: "A potential client!", from: client_email)
  end
end
