class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = new_mail_server

    mail_server.send_message({ to: @email, body: base_body })
  end

  private

  def new_mail_server
    MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
  end

  def base_body
    "Welcome to MyProduct"
  end

  def body
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end