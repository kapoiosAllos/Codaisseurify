require 'rails_helper'

feature 'Remove all songs from an artist', js: true do

  scenario 'remove all songs from an artist' do
    @artist1 = Artist.first
    visit @artist1_path
    fill_in 'new_song_title', with: 'Song name'
    fill_in 'new_song_duration', with: '123'
    page.execute_script("$('form').submit()")
    fill_in 'new_song_title', with: 'Song name1'
    fill_in 'new_song_duration', with: '3'
    page.execute_script("$('form').submit()")
    fill_in 'new_song_title', with: 'Song name3'
    fill_in 'new_song_duration', with: '1'
    page.execute_script("$('form').submit()")
    sleep(1)
    click('delete-all-songs')
    expect(page).not_to have_content('Song name')
    expect(page).not_to have_content('Song name1')
    expect(page).not_to have_content('Song name3')
    expect(page).not_to have_content('123')
    expect(page).not_to have_content('3')
    expect(page).not_to have_content('1')
  end
end
