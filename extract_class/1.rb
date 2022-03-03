# Understands sanitising a user's email and sending them an email

class UserContacter
  def send_email_to(user)
    sanitised_email = make_sanitised_email(user)
    mail = Mail.new(sanitised_email)
    mail.send_message
  end


  private

  def make_sanitised_email(user)
    EmailSanitiser.new.sanitised_email_for(user)
  end
end

class EmailSanitiser

  def sanitised_email_for(user)
    email.strip
  end

end