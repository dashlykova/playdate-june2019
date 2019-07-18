Given("I visit the dashboard") do
  visit root_path
end

Given("the following kindergartens exist") do |table|
  table.hashes.each do |kindergarten|
    Kindergarten.create!(kindergarten)
  end  
end

Given("I am logged in as {string}") do |email|
  user = FactoryBot.create(:user, email: email)
  login_as user, scope: :user
end

When("I fill {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string}") do |name|
  click_link_or_button name
end