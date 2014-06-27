require 'spec_helper'

describe "StaticPages" do
	
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
	end
	end
	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contactus'
			expect(page).to have_content('Contact Us')
	end
end
end
