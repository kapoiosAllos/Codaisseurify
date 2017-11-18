require 'rails_helper'

feature 'Add a new song', js: true do

  scenario 'add a new song' do
    @artist1 = Artist.first
    visit @artist1_path
    fill_in 'new_song_title', with: 'Song name'
    fill_in 'new_song_duration', with: '123'
    page.execute_script("$('form').submit()")
    expect(page).to have_content('Song name')
    expect(page).to have_content('123')
  end
end
