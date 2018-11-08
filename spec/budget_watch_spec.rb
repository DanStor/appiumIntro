require 'spec_helper'

describe "Testing Budget Watch App" do
  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end


  it "should open the app to the homepage" do
    expect(find_element(:id, "protect.budgetwatch:id/action_settings"))
  end
end
