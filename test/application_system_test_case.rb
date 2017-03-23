require "test_helper"
require "capybara/poltergeist"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  if ENV['HEADLESS'] == 'true'
    driven_by :poltergeist
  else
    driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  end

  fixtures :all
end
