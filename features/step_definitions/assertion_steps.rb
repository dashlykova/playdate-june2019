Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Then("{string} should be associated with {string}") do |resource_name, user_email|
  user = User.find_by(email: user_email)
  kindergarten = Kindergarten.find_by(name: resource_name)
  expect(kindergarten.users).to include user
end