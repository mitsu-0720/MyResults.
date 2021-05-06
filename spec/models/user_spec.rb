require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "姓、名、メール、パスワードがある場合、有効である" do
    user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
    expect(user).to be_valid
  end

  it "名がない場合、無効である" do
    user = User.new(name: nil, email: "user@example.com", password: "foobar", password_confirmation: "foobar")
    user.valid? #エラーメッセージを出すため
    expect(user.errors[:name]).to include("can't be blank")
  end
end
