def tell_browser_type(browser)
  if is_safari?
    puts "You are using the Safari browser."
  else
    puts "You are using a non-Safari browser."
  end
end
def is_safari?(browser)
  browser.type == "Safari"
end