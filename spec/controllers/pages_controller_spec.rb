require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = 'Good Sect Bad Sect'
  end

  describe "GET 'home'" do
    
    describe "when not logged in" do
      it "should be successful" do
        get 'home'
        response.should be_success
      end
    
      it "should have the right title" do
        get 'home'
        response.should have_selector("title",
                                      :content => "#{@base_title} | Home")
      end

      it "should have a non-blank body" do
        get 'home'
        response.body.should_not =~ /<body>\s*<\/body>/
      end
    end
    
    describe "when logged in" do
      before(:each) do
        @user = test_log_in(Factory(:user))
      end

      pending "add some examples to #{__FILE__} for 'when logged in'"
    end
  end


  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                                    :content => "#{@base_title} | About")
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector("title",
                                    :content => "#{@base_title} | Help")
    end
  end
end
