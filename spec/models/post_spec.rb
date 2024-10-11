require 'rails_helper'

RSpec.describe Post, type: :model do
  context "Validar título" do
    it "should be valid" do
      post = Post.new(title:"teste", description:"teste descr")
      expect(post).to be_valid  
    end

    it "should not be valid" do
      post = Post.new(description:"teste descr")
      expect(post).to_not be_valid   
    end

  end
end
