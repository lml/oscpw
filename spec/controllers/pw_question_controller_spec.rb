require 'spec_helper'

describe PwQuestionController do

  describe "GET 'textbookSelect'" do
    it "returns http success" do
      get 'textbookSelect'
      response.should be_success
    end
  end

  describe "GET 'chapterSelect'" do
    it "returns http success" do
      get 'chapterSelect'
      response.should be_success
    end
  end

  describe "GET 'questionView'" do
    it "returns http success" do
      get 'questionView'
      response.should be_success
    end
  end

end
