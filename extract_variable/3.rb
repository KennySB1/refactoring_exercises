
def send_correct_page(browser, window)
  safari_message = "You are using the Safari browser in a small window."
  not_safari_message = "You are not using the Safari browser or have a big window."

  if safari_and_window_size_checker(window, browser)
    return safari_message
  else
    return not_safari_message
  end
end

def safari_and_window_size_checker(window, browser)
  is_safari?(browser) && window_size_checker(window)
end

def is_safari?(browser)
  browser.type == "Safari"
end
def window_size_checker(window)
  window.size < "768px"
end
