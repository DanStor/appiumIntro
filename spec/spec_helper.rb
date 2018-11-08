require 'rspec'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      "platformName": "Android",
      "deviceName": "emulator-5554",
      "app": "app/budgetwatch.apk"
    }
  }
end
