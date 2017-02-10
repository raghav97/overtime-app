require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
    before "Creation" do
      @post = Post.create(date: Date.today, rationale: "Anything")
    end

    it "can't be created" do
      expect(@post).to be_valid
    end

    it "can not be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
