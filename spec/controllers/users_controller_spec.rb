require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  let(:base_title) { 'My Results' }

  it "get signup" do
    get :new
    # expect(response.status).to eq(200)
    # expect(response.body).to match(/<title>#{base_title}<\/title>/i)
    expect(response.body).to have_content 'Users#new'
  end

end