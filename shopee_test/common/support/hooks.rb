ENV["BASE_URL"] ||= "https://hr.sleekr.co"
Before do
  Capybara.app_host = ENV["BASE_URL"]
  Capybara.default_max_wait_time = 10

  # maintain backward compatible
  @wait = Selenium::WebDriver::Wait.new timeout: 10
  @driver = page.driver
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  if scenario.failed?
    p "test failed!"
    p "Getting screen shoot in session #{Capybara.session_name}"
    Capybara.using_session_with_screenshot(Capybara.session_name.to_s) do
      # screenshots will work and use the correct session
    end
  end
  Capybara.current_session.driver.quit
end
