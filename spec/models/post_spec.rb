# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Post do  
  before do    
    @post = Post.new(title: "zboubi", content: "Lorem ipsum")
  end

  subject { @post}

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  
  it { should be_valid }
  
  describe "when title is not present" do
    before { @post.title = nil }
    it { should_not be_valid }
  end
  
  describe "when content is not present" do
    before { @post.content = nil }
    it { should_not be_valid }
  end
  
  describe "when title is too long" do
    before { @post.content = "a" * 101 }
    it { should_not be_valid }
  end
end
