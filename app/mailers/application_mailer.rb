class ApplicationMailer < ActionMailer::Base
  default from: 'books_berlin@abv.bg'
  layout 'mailer'

  def sample_email(user)
      @user = user
      mg_client = Mailgun::Client.new ENV['pubkey-5b7ef9f644014fe73f5f43a25bb5f3de']
      message_params = {:from    => ENV['books_berlin@abv.bg'],
                        :to      => @user.email,
                        :subject => 'Sample Mail using Mailgun API',
                        :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
      mg_client.send_message ENV['domain'], message_params
end
