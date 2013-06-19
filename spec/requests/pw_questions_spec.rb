require 'spec_helper'

describe "PW Questions |" do

	describe "Textbook Selection" do
		it "should have the h1 'Textbook Selection'" do
			visit '/pw_question/textbookSelect'
			page.should have_selector('h1', :text => 'Textbook Selection')
		end

		it "should have the title 'Textbook Selection'" do
			visit '/pw_question/textbookSelect'
			page.should have_selector('title', :text => 'Textbook Selection')
		end
	end

	describe "Chapter Selection" do
		it "should have the h1 'Chapter Selection'" do
			visit '/pw_question/chapterSelect'
			page.should have_selector('h1', :text => 'Chapter Selection')
		end
		it "should have the title 'Chapter Selection'" do
			visit '/pw_question/chapterSelect'
			page.should have_selector('title', :text => 'Chapter Selection')
		end
	end

	describe "Question View" do
		it "should have the h1 'Question #'" do
			visit '/pw_question/questionView'
			page.should have_selector('h1', :text => 'Question #')
		end
		it "should have the title 'Question #'" do
			visit '/pw_question/questionView'
			page.should have_selector('title', :text => 'Question #')
		end
	end
end
