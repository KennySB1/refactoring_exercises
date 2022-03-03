# Understands detecting the browser type and sending the user a message
class BrowserMessage

  def initialize
    @browser_checker = BrowserChecker.new
  end

  def tell_browser_type(browser)
    @browser_checker.safari?(browser) ? print_safari_message : print_not_safari_message
  end

  private
  def print_safari_message
    puts "You are using the Safari browser."
  end

  def print_not_safari_message
    puts "You are not using a Safari browser."
  end
end

class BrowserChecker
  def safari?(browser)
    safari?(browser)
  end
end