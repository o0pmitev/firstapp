class ApplicationMailer < ActionMailer::Base
  default from: 'books_berlin@abv.bg'
  layout 'mailer'

  def sample_email(user)
   @user = user
   mail(to: @user.email, subject: 'Sample Email')
 end
end
