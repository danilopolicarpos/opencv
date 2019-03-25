Before do
  driver.start_driver
  remove_screenshot
end

After do
  driver.driver_quit
end
