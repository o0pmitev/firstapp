class UserMailer < ApplicationMailer
default from: "books_berlin@abv.bg"



  def contact_form(email, name, message)
  @message = message
      mail(from: email,
      to: 'books_berlin@abv.bg',
      subject: "A new contact form message from #{name}")
  end

  def contact_formTest(email, name, message)
    @message = message
    mail(from:email,
         to: 'books_berlin@abv.bg',
         subject:'finaly')
  end

  def welcome(user)
    @appname = "Books Berlin"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end
end
