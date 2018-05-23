require 'rails_helper'
feature "user sees list of boating locations" do
  scenario "clicks link and is taken to show page for given park" do
    user = User.create!(
      username:'boatman',
      first_name:'sam',
      last_name:'daman',
      date_of_birth:'1988-03-02',
      email:'seaman@ship.com',
      password:'notpassword'
    )
    location = BoatingLocation.create!(
      name: 'Marthas vineyard',
      address: 'vineyard st',
      gas_dock: true,
      public_launch: true,
      public_restroom: true,
      user_id: 2
    )
    visit boating_locations_path
    click_link "Marthas vineyard"
    expect(page).to have_content location.name
    expect(page).to have_content location.address
    expect(page).to have_content location.gas_dock
    expect(page).to have_content location.lat_long
    expect(page).to have_content location.public_launch
    expect(page).to have_content location.public_restroom
  end
end
