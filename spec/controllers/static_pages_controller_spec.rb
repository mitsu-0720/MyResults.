require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  let(:base_title) { 'My Results' }

  it "get root" do
    get :home
    # expect(response.status).to eq(200)
    # expect(response.body).to match(/<title>#{base_title}<\/title>/i)
    expect(response.body).to match(/<title>#{base_title}<\/title>/i)
  end

  it "get help" do
    get :help
    # expect(response.status).to eq(200)
    expect(response.body).to match(/<title>Help | #{base_title}<\/title>/i)
  end

  it "get about" do
    get :about
    # expect(response.status).to eq(200)
    expect(response.body).to match(/<title>このサイトについて | #{base_title}<\/title>/i)
  end

end