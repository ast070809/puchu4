# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  link        :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

require 'spec_helper'

describe Post do
  before { @post = Post.new(title: 'Example title',
  		  description: 'Example description', link: 'Example link')}
  subject { @post } 

  it { should respond_to(:title)}
  it { should respond_to(:description)}
  it { should respond_to(:link)}
  it { should belong_to(:user)}
  
  describe "when title is not present" do
  	before { @post.title = " "}
  	it { should_not be_valid }
  end

end
