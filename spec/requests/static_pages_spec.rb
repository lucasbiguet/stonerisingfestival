require 'spec_helper'

describe "Static pages" do

  describe "Bands page" do

    it "should have the content 'Bands'" do
      visit '/static_pages/bands'
      page.should have_content('Bands')
    end
  end
  
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
  end
  
  describe "Infos page" do

    it "should have the content 'Infos'" do
      visit '/static_pages/infos'
      page.should have_content('Infos')
    end
  end
  
  describe "Partners page" do

    it "should have the content 'Partners'" do
      visit '/static_pages/partners'
      page.should have_content('Partners')
    end
  end
end