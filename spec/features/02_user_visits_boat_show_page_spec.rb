require 'rails_helper'
feature 'user can add boats' do
  scenario 'user creates new boat successfully' do
    visit boats_path
    save_and_open_page
    expect(page).to have_content 'All User Boats'


  end
end
