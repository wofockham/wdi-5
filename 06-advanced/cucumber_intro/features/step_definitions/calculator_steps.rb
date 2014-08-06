Given(/^I have a calculator$/) do
  @calculator = Calculator.new
end

Given(/^I have the number (\d+)$/) do |number|
  @calculator << number
end

When(/^I add them together$/) do
  @calculator.add
end

Then(/^I should see (\d+) on the terminal$/) do |number|
  assert_equal 12, number.to_i
end
