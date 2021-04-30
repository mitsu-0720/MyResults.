require 'rails_helper'

RSpec.describe 'Home', type: :system do
  it 'shows greeting' do
    # root_pathへアクセス
    visit root_path
    # ページ内に'Hello World!'が含まれているかを検証
    expect(page).to have_content 'Hello World!'
    # 'Help'文字列をクリック
    click_on 'Help'
    # ページ内に'This is the help page.'が含まれているかを検証
    expect(page).to have_content 'This is the help page.'
  end
end