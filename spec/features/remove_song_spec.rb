require 'rails_helper'

feature 'Remove a song', js: true do

  scenario 'remove a new song' do
    @artist1 = Artist.first
    visit @artist1_path
    fill_in 'new_song_title', with: 'Song name'
    fill_in 'new_song_duration', with: '123'
    page.execute_script("$('form').submit()")
    sleep(1)
    click('delete-song-1')
    expect(page).not_to have_content('Song name')
    expect(page).not_to have_content('123')
  end
end
