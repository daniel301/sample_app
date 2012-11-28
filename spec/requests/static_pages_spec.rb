require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) {"Tutorial de Ruby On Rails Sample App"}

  describe "Home page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_selector('h1', :text => 'Sample App')     # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end
    it "Dabe tener el título correcto" do
      visit '/static_pages/home'
      page.should have_selector('title',
                    :text => "#{base_title} | Home")
    end
    it "No debe tener el título customizado" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
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
                    :text => "#{base_title} | Help")
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
                    :text => "#{base_title} | Acerca de")
    end
  end

  describe "Contact page" do
    it "Debería tener el contenido 'Contacto'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                    :text => "#{base_title} | Contacto")
    end
  end

end
