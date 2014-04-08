require 'spec_helper'

describe Adventure do
  it "return the correct version number" do
    Adventure.version_string.should eq("Adventure version #{Adventure::VERSION}")
  end
end
