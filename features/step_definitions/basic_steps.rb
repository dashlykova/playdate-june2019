Given("I visit the dashboard") do
  visit root_path
end

Given("the following kindergartens exist") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string}") do |name|
  click_link_or_button name
end