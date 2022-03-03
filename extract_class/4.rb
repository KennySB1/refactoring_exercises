# Understands connecting to a mail server and sending a fancy or non-fancy message to the user
class Mail
  def initialize(email, fancy = false, mail_formatter = MailFormatter.new)
    @email = email
    @fancy = fancy
    @formatter = mail_formatter

  end

  def send_message
    mail_server.send_message(@formatter.format(@email, body))
  end
  private

  def mail_server
    return MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end

  def body
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end

  def base_body
    return "Welcome to MyProduct"
  end
end

class MailFormatter
  def format(email, body)
    return {to: email, body: body}
  end
end

class MailServerCreator
  def new_mail_server
    return MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end
end