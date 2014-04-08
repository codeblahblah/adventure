require "spec_helper"

describe Adventure::Page do

	before(:each) do
		Adventure::Page.delete_all
	end

	it "should know if it's at the end of the road" do
		page = Adventure::Page.create(conclusion: true)
		page.conclusion?.should be_true
	end

	it "should have awesome content" do
		page = Adventure::Page.create(content: "The fox and hound get along")
		Adventure::Page.find(page.id).content.should eq("The fox and hound get along")
	end

	context "#options" do
		subject {Adventure::Page.create}
		let(:option_a) {Adventure::Page.create(parent_id: subject.id)  }
		let(:option_b) {Adventure::Page.create(parent_id: subject.id)  }
		let(:option_c) {Adventure::Page.create(parent_id: subject.id)  }

		it "should have options for the next pages" do
			subject.options.should eq([option_a, option_b])
		end
	end

	it "should not be a starting point by default" do
		Adventure::Page.create.starting_point.should eq(false)
	end
	it "should not be a conclusion by default" do
		Adventure::Page.create.conclusion.should eq(false)
	end

	it "should have a starting point" do
		the_page = Adventure::Page.create(starting_point: true)
		Adventure::Page.starting_point.should eq(the_page)
	end
end
