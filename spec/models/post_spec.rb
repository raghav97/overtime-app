require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before "Creation" do
      @post = FactoryGirl.build_stubbed(:post)
      @user = FactoryGirl.create(:user)
      @post.user = @user
    end

    it "can't be created" do
      expect(@post).to be_valid
    end

    it "can not be created without a date, overtime request and rationale" do
      @post.date = nil
      @post.rationale = nil
      @post.overtime_request = nil
      expect(@post).to_not be_valid
    end

    it 'has an overtime request greater than 0.0' do
      @post.overtime_request = 0.0
      expect(@post).to_not be_valid
    end
  end
end
