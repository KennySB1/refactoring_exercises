# Understands detecting the browser type, detecting the browser width, and giving the user the correct page
class BrowserPageChooser
  def initialize
    @browser_checker = BrowserChecker.new
    @window_checker = WindowChecker.new
  end

  def send_correct_page(browser, window)
    browser_and_window_checker(browser, window) ? print_safari_small_message : print_not_safari_or_big_message
  end

  private

  def print_safari_small_message
    puts "You are using the Safari browser in a small window."
  end

  def print_not_safari_or_big_message
    "You are not using the Safari browser or have a big window."
  end

  def browser_and_window_checker(browser, window)
    @browser_checker.safari?(browser) && @window_checker.small?(window)
  end

end

class BrowserChecker
  def safari?(browser)
    browser.type == "Safari"
  end
end

class WindowChecker
  def small?(window)
    window.size < "768px"
  end
end