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

  it 'should have the budget option on the main landing page' do
    expect(find_element(:id, "protect.budgetwatch:id/menu").displayed?).to eq true
  end

  it 'should access the budget page' do
    find_element(:id, "protect.budgetwatch:id/menu").click
    expect(find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to eq true
    expect(find_element(:id, "protect.budgetwatch:id/action_add").displayed?).to eq true
  end

  it 'should be able to add a budget' do
    find_element(:id, "protect.budgetwatch:id/action_add").click
    find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys("Brian Moneeez")
    find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys("2547")
    find_element(:id, "protect.budgetwatch:id/action_save").click

    expect(find_element(:id, "protect.budgetwatch:id/budgetName").displayed?).to eq true
    find_element(:id, "protect.budgetwatch:id/budgetName").click
    expect(find_element(:id, "protect.budgetwatch:id/helpText").displayed?).to eq true
    expect(find_element(:id, "protect.budgetwatch:id/pager").displayed?).to eq true
  end

end
