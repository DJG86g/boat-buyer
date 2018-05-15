require 'rails_helper'
feature 'user can add boats' do
  scenario 'user visits boat show page' do
      user = User.create!(username:"boatman",first_name:"sam",last_name:"daman",date_of_birth:"1988-03-02",email:"seaman@ship.com",password:"notpassword")
      boat = Boat.create!(
        brand:"grady-white",
        model:"330",
        year:"2010",
        hours:"273",
        engine_size:"250",
        number_of_engines:"3",
        user_id: 1 ,
        length_of_boat:"33",
        hull_style:"deep vee"
      )

    visit boat_path(boat)
    save_and_open_page
    expect(page).to have_content "#{boat.user.first_name}'s #{boat.brand}"
    expect(page).to have_content "#{boat.brand}"
    expect(page).to have_content "#{boat.model}"
    expect(page).to have_content "#{boat.year}"
    expect(page).to have_content "#{boat.hours}"
    expect(page).to have_content "#{boat.engine_size}"
    expect(page).to have_content "#{boat.number_of_engines}"
    expect(page).to have_content "#{boat.length_of_boat}"
  end
end
