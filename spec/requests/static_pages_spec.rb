require 'spec_helper'

describe "Static pages" do
  

  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
    it "Dabe tener el título correcto" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "Tutorial de Ruby On Rails Sample App | Home")
    end

  end

  describe "Help page" do
  	it "Debería tener el contenido 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end
    it "Dabe tener el título correcto" do
      visit '/static_pages/help'
      page.should have_selector('title',
                    :text => "Tutorial de Ruby On Rails Sample App | Help")
    end
  end

  describe "About page" do
    it "Debería tener el contenido 'Acerca de'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'Acerca de')
    end 
    it "Dabe tener el título correcto" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "Tutorial de Ruby On Rails Sample App | Acerca de")
    end
  end

end
