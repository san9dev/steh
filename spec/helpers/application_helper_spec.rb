require 'spec_helper'

RSpec.describe "ApplicationHelper", type: :request do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("Steh")).to match(/Steh/)
    end

    it "should include the base title" do
      expect(full_title("Steh")).to match(/^Steh/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end