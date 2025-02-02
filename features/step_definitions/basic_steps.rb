Given("I visit the dashboard") do
  visit root_path
end

When("I fill {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string}") do |name|
  click_link_or_button name
end