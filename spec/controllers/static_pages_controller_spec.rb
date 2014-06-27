require 'spec_helper'

describe StaticPagesController do

  describe "GET 'ContactUs'" do
    it "returns http success" do
      get 'ContactUs'
      response.should be_success
    end
  end

end
