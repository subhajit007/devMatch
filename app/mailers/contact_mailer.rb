class ContactMailer < ActionMailer::Base
  default to: 'subhajitusa007@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'From devmatch')
  end
end