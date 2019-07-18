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

When("I click {string} for {string}") do |element_text, resource_name|
  kindergarten = Kindergarten.find_by(name: resource_name)
  within "#kindergarten_#{kindergarten.id}" do 
    click_on element_text
  end  
end

When("I click {string}") do |element_text|
  click_on element_text
end

Then("show me the page") do
  save_and_open_page
end