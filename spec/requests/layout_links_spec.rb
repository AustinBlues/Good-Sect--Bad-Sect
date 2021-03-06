require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end
  
  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
  
  it "should have a Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Help")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign up")
  end
  
  it "should have a login page at '/login'" do
    get '/login'
    response.should have_selector('title', :content => "Log in")
  end
  
  it "should have the right links on the layout" do
    visit root_path
    response.should have_selector('a[href="/reports"]>img')
    response.should have_selector('title', :content => "Home")
    click_link "About"
    response.should have_selector('title', :content => "About")
    click_link "Contact"
    response.should have_selector('title', :content => "Contact")
    click_link "Home"
    response.should have_selector('title', :content => "Home")
    click_link "Sign up"
    response.should have_selector('title', :content => "Sign up")
  end
  
  describe "when not logged in" do
    it "should have a login link" do
      visit root_path
      response.should have_selector("a", :href => login_path,
                                         :content => "Log in")
    end
  end
  
  describe "when logged in" do
    
    before(:each) do
      @user = Factory(:user)
      visit login_path
      fill_in :email,    :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end
    
    it "should have a logout link" do
      visit root_path
      response.should have_selector("a", :href => logout_path,
                                         :content => "Log out")
    end
    
    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
    end
    
    it "should have a settings link" do
      visit root_path
      response.should have_selector("a", :href => edit_user_path(@user),
                                         :content => "Settings")
    end
    
    it "should have a users link" do
      visit root_path
      response.should have_selector("a", :href => users_path,
                                         :content => "Users")
    end
  end
end
