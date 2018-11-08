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
      "app": "/Users/tech-a51/Desktop/budgetwatch.apk"
    }
  }
end
