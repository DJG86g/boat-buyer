require "rails_helper"

# [] A ride must have a name, address, city, state, and zip code. It can optionally have a description.
# [] Visiting the `/rides/new` path should display a form for creating a new ride.
# [] When adding a new ride, if I fill out the form correctly, I should see the page for the newly created ride.
# [] When adding a new ride, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.


feature "user creates a new boat" do
  scenario "user creates new boat successfully" do

    visit new_boat_path

    expect(page).to have_content "New Boat Form"
    fill_in 'Brand', with: "formula"
    fill_in 'Model', with: "fastech 292"
    fill_in 'Year', with: "2009"
    fill_in 'Hours', with: "253"
    fill_in 'Engine size', with: "350"
    fill_in 'Number of engines', with: "2"
    fill_in 'Length of boat', with: "29 feet"
    fill_in 'Hull style', with: "deep v"
    attach_file "Boat photo", "#{Rails.root}/spec/support/images/photo.jpg"
    click_button "Add My Boat"
  end

  scenario "user does not provide proper information for a boat" do

    visit new_boat_path
    expect(page).to have_content "New Boat Form"

    click_button "Add My Boat"
    save_and_open_page
    expect(page).to have_content "Brand can't be blank"
    expect(page).to have_content "Model can't be blank"
    expect(page).to have_content "Year can't be blank"
    expect(page).to have_content "Hours can't be blank"
    expect(page).to have_content "Engine size can't be blank"
    expect(page).to have_content "Number of engines can't be blank"
    expect(page).to have_content "Length of boat can't be blank"
  end




end
