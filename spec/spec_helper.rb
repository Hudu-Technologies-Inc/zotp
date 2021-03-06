require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require 'zotp'
require 'timecop'

RSpec.configure do |config|
  config.disable_monkey_patching!
  config.raise_errors_for_deprecations!
  config.color = true
  config.fail_fast = true

  config.before do
    Timecop.return
  end
end

require_relative '../lib/zotp'
