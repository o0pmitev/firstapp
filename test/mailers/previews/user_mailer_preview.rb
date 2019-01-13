# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def contact_formTest
    UserMailer.contact_formTest('john@sample.com',"john","After 2 days finaly some progres!")
  end

end
