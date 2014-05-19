require 'spec_helper'

describe SimpleWiki do

  it "process bold (**la-la**)" do
    SimpleWiki::MarkupProcessor.process("**hello**").should == "<b>hello</b>"
  end


  it "process italic (\\\\la-la\\\\)" do
    SimpleWiki::MarkupProcessor.process("\\\\hello\\\\").should == "<i>hello</i>"
  end

  it "process link ( ((href/href/href [title])) )" do
    SimpleWiki::MarkupProcessor.process("((hello1/hello2/hello3 [title]))").should == "<a href=\"hello1/hello2/hello3\">title</a>"
  end
  
  it "complex test with all of templates" do
    SimpleWiki::MarkupProcessor.process("I will say **hello** to you. Could you follow this ((hello1/hello2/hello3 [link])) or say \\\\hello\\\\ to me to").should ==
      "I will say <b>hello</b> to you. Could you follow this <a href=\"hello1/hello2/hello3\">link</a> or say <i>hello</i> to me to"
  end

end
