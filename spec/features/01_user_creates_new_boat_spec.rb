require 'rails_helper'
feature 'user can add boats' do
  scenario 'user creates new boat successfully' do
    visit new_boat_path
    expect(page).to have_content 'New Boat Form'
    fill_in 'Brand', with: 'formula'
    fill_in 'Model', with: 'fastech 292'
    fill_in 'Year', with: '2009'
    fill_in 'Hours', with: '253'
    fill_in 'Engine size', with: '350'
    fill_in 'Number of engines', with: '2'
    fill_in 'Length of boat', with: '29 feet'
    fill_in 'Hull style', with: 'deep v'
    attach_file 'Boat photo', "#{Rails.root}/spec/support/images/photo.jpg"
    click_button 'Add My Boat'
  end
  scenario 'user does not provide proper information for a boat' do
    visit new_boat_path
    expect(page).to have_content 'New Boat Form'
    click_button 'Add My Boat'
    expect(page).to have_content "Brand can't be blank"
    expect(page).to have_content "Model can't be blank"
    expect(page).to have_content "Year can't be blank"
    expect(page).to have_content "Hours can't be blank"
    expect(page).to have_content "Engine size can't be blank"
    expect(page).to have_content "Number of engines can't be blank"
    expect(page).to have_content "Length of boat can't be blank"
  end
end
