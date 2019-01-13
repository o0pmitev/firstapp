class UserMailer < ApplicationMailer
default from: "from@example.com"



  def contact_form(email, name, message)
  @message = message
  UserMailer.contact_form(@email, @name, @message).deliver_now

    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new contact form message from #{name}")
  end
  
  def contact_formTest(email, name, message)
    @message = message
    mail(from:email,
         to: 'books_berlin@abv.bg',
         subject:'finaly')
  end
end
