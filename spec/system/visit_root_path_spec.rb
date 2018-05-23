require 'rails_helper'

RSpec.describe 'Visit Root Path', type: :system do
  it 'loads the root path' do
    visit root_path
    expect(page).to have_content('Pages#home')
  end
end