require 'spec_helper'

describe "Static pages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path}
    
    it { should have_selector('h1', :text => 'Sample App') }    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => full_title(' | Home')) }
    
   
  end

  describe "Help page" do
  	before {visit help_path}

    it { should have_selector('h1', :text => 'Help') }
  	it { should have_selector('title', :text => full_title('Help')) }
  end

  describe "About page" do
    before {visit about_path}

    it { should have_selector('h1', :text => 'Acerca de') }
    it { should have_selector('title', :text => full_title('Acerca de')) }
  end

  describe "Contact page" do
    before {visit contact_path}

    it { should have_selector('h1', :text => 'Acerca de') }
    it { should have_selector('title', :text => full_title('Contacto')) }
  end

end
