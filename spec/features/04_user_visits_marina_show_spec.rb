require 'rails_helper'
feature 'user can see a boat' do
  scenario 'user visits boat show page' do
    marina = Marina.create!(
      name:"oaksbluff",
      phone_number: "781-321-5476",
      address:"blah st",
      city:"oaksbluff",
      state:"ma",
      zip_code:"010101",
      max_boat_size: 30 ,
      accommodations:"all the things",
      public_launch: true,
      public_restroom: true,
      gas_dock: true
    )

    visit marina_path(marina)
      expect(page).to have_content "BoatBuyer"
      expect(page).to have_content "phone number :"
      expect(page).to have_content "address :"
      expect(page).to have_content "city :"
      expect(page).to have_content "state :"
      expect(page).to have_content "zip code :"
      expect(page).to have_content "max boat size"
      expect(page).to have_content "accommodations :"
      expect(page).to have_content "public launch :"
      expect(page).to have_content "public restroom :"
      expect(page).to have_content "gas dock :"
      expect(page).to have_content "#{marina.name}"
      expect(page).to have_content "#{marina.address}"
      expect(page).to have_content "#{marina.city}"
      expect(page).to have_content "#{marina.state}"
      expect(page).to have_content "#{marina.zip_code}"
      expect(page).to have_content "#{marina.max_boat_size}"
      expect(page).to have_content "#{marina.accommodations}"
      expect(page).to have_content "#{marina.public_launch}"
      expect(page).to have_content "#{marina.public_restroom}"
      expect(page).to have_content "#{marina.gas_dock}"
  end
end
