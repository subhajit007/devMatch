class ContactMailer < ActionMailer::Base
  default to: 'subhajitusa007@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'email from devmatch')
  end

   def email_confirm(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(to: email, from: 'noreply@joindevmatch.herokuapp.com', subject: 'Welcome to devmatch')
  end
end
