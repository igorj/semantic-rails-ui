require 'coveralls'
Coveralls.wear!


require 'minitest/autorun'

require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# Filter out Minitest backtrace while allowing backtrace from other libraries to be shown.
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
