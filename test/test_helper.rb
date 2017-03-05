require 'coveralls'
Coveralls.wear!

# use minitest-reporters to create xmls for jenkins and nicer terminal reporting
require 'minitest/reporters'
require 'minitest/reporters/screenshot_reporter'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new,
                          Minitest::Reporters::JUnitReporter.new,
                          Minitest::Reporters::ScreenshotReporter.new]
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

require File.expand_path("../../test/dummy/config/environment.rb",  __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
require "rails/test_help"

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.fixtures :all
end

# default test class for unit tests
class UnitTest < ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
end
