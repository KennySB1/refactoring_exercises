
def send_email_to(user)
  mail = new_email(user)
  mail.send_message
end

def new_email(user)
  email = user.email.strip
  return Mail.new(email)
end


