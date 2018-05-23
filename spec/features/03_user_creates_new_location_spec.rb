require 'rails_helper'
feature 'user can add boating location' do
  scenario 'user visits new boating location' do
    visit new_boating_location_path
    expect(page).to have_content "BoatBuyer"
    expect(page).to have_content "New Boating Location"
    expect(page).to have_content "Name"
    expect(page).to have_content "Address"
    expect(page).to have_content "Lat long"
    expect(page).to have_content "Gas dock"
    expect(page).to have_content "Public launch"
    expect(page).to have_content "Public restroom"

    fill_in 'Name', with: "marthas vinyard"
    fill_in 'Address', with: "123 main st"
    fill_in 'Lat long', with: "42.000, 80.000"
    check 'Gas dock'
    check 'Public launch'
    check 'Public restroom'
    click_button "Add My Boating Location"
  end

  scenario 'users misses a form field' do
    visit new_boating_location_path
    expect(page).to have_content 'New Boating Location'
    click_button 'Add My Boating Location'
    save_and_open_page
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Address can't be blank"
    expect(page).to have_content "Gas dock can't be blank"
    expect(page).to have_content "Public launch can't be blank"
    expect(page).to have_content "Public restroom can't be blank"
    expect(page).to have_content "User must exist"
  end

end
