require 'spec_helper'

describe SimpleEmailValidation do
  describe "valid" do
    emails = %w(valid@example.com
                Valid@example.com
                v@example.com
                valid_@example.com
                valid-@example.com)

    emails.each do |email|
      it "#{email} is valid" do
        expect(Person.new(email)).to be_valid
      end
    end
  end

  describe "invalid" do
    emails = %w(日本語@example.com
                invalid..123@example.com)

    emails.each do |email|
      it "#{email} is invalid" do
        expect(Person.new(email)).not_to be_valid
      end
    end
  end
end
