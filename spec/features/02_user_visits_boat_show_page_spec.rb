require 'rails_helper'
feature 'user can see a boat' do
  scenario 'user visits boat show page' do
    user = User.create!(
      username:'boatman',
      first_name:'sam',
      last_name:'daman',
      date_of_birth:'1988-03-02',
      email:'seaman@ship.com',
      password:'notpassword'
    )
    boat = Boat.create!(
      brand:'grady-white',
      model:'330',
      year:'2010',
      hours:'273',
      engine_size:'250',
      number_of_engines:'3',
      user_id: 1 ,
      length_of_boat:'33',
      hull_style:'deep vee'
    )
    marina = Marina.create!(
      name:'oaksbluff',
      phone_number:'781-321-5476',
      address:'blah st',
      city:'oaksbluff',
      state:'ma',
      zip_code:'010101',
      max_boat_size: 30 ,
      accommodations:'all the things',
      public_launch: true,
      public_restroom: true,
      gas_dock: true
    )
    visit boat_path(boat)
      expect(page).to have_content 'BoatBuyer'
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
