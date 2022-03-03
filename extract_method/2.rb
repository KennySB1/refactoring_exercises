def tell_browser_type(browser)
  is_browser_type_safari?(browser) ? print_safari_message : print_not_safari_message
end



def is_browser_type_safari?(browser)
  browser.type == "Safari"
end

def print_safari_message
  puts "You are using the Safari browser."
end

def print_not_safari_message
  puts "You are using a non-Safari browser."
end