def send_email_to(user)
  make_new_email(user).send_message
end
def make_new_email(user)
  return Mail.new(user.email.strip)
end