World(Rack::Test::Methods)

Given(/^there is a kata in the database$/) do
  FactoryGirl.create(:kata, id: 123)
end

When(/^sending the request GET "([^"]*)"$/) do |path|
  get path
end

Then(/^I get the response$/) do |response_json|
  expected_response = JSON.parse(response_json)
  actual_response = JSON.parse(last_response.body)
  expect(actual_response).to eq expected_response
end