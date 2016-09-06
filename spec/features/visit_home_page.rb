RSpec.feature "Home Page" do
  visit root_path
  expect(page).to have_content "Welcome"
end
