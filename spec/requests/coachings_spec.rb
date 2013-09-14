require 'spec_helper'

describe "Coachings" do
  
  describe "Home Page" do
  
  	it "should have the content 'Coaching'" do
  		visit '/coaching/index'
  		expect(page).to have_content('Coaching')
  	end
  
  end
end
