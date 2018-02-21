require 'rails_helper'

RSpec.describe Like, type: :model do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
    @like = create(:like, user: @user, secret: @secret)
  end
  it 'belongs to a user' do
    expect(@like.user).to eq(@user)
  end
  it 'belongs to a secret' do
    expect(@like.secret).to eq(@secret)
  end
end
