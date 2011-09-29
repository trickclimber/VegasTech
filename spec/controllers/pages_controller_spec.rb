require 'spec_helper'
require 'webrat'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Vegas Tech - Home")
    end
  end

  describe "GET 'events'" do
    it "should be successful" do
      get 'events'
      response.should be_success
    end
    
    it "should have the right title" do 
      get 'events'
      response.should have_selector("title", :content => "Vegas Tech - Events")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Vegas Tech - About")
    end
  end

end
