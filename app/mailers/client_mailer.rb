class ClientMailer < ActionMailer::Base
  include SendGrid
  #default to: "bmartin@rendartstl.com"
  default to: "lappp9@gmail.com"
  sendgrid_category :use_subject_lines


  def client_email(client_email, message)
    @client = client_email
    @message = message
    mail(subject: "A potential client!", from: client_email)
  end
end
