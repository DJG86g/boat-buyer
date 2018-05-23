require 'rails_helper'
feature 'user can add Marina' do
  scenario 'user visits new Marina form' do
    visit new_marina_path
    expect(page).to have_content 'BoatBuyer'
    expect(page).to have_content 'New Marina'
    expect(page).to have_content 'Name'
    expect(page).to have_content 'Address'
    expect(page).to have_content 'City'
    expect(page).to have_content 'State'
    expect(page).to have_content 'Zip code'
    expect(page).to have_content 'Max boat size'
    expect(page).to have_content 'Accommodations'
    expect(page).to have_content 'Public restroom'
    expect(page).to have_content 'Public launch'
    expect(page).to have_content 'Gas dock'
    fill_in 'Name', with: 'rowes warf'
    fill_in 'Address', with: '123 main st'
    fill_in 'City', with: 'boston'
    fill_in 'State', with: 'MA'
    fill_in 'Zip code', with: '20013'
    fill_in 'Max boat size', with: '30'
    fill_in 'Accommodations', with: 'city sights, redsox, the aquarium,the boston garden, the north end, hotels'
    check 'Gas dock'
    check 'Public launch'
    check 'Public restroom'
    click_button 'Add Marina'
  end
  scenario 'users misses a form field' do
    visit new_marina_path
    expect(page).to have_content 'New Marina'
    click_button 'Add Marina'
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Address can't be blank"
    expect(page).to have_content "Gas dock can't be blank"
    expect(page).to have_content "Public launch can't be blank"
    expect(page).to have_content "Public restroom can't be blank"
  end
end
