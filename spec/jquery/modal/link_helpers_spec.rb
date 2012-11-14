require "spec_helper"

describe Jquery::Helpers do
  include ActionView::Helpers, ::ERB::Util, ActionView::Context
  include Jquery::Helpers


  it "offers default link" do
    link_to_modal("SimpleDialog", "http://www.google.de", :id => 1).should \
      eq('<a href="http://www.google.de" id="1" rel="modal:open">SimpleDialog</a>')
  end

  it "offers AJAX link" do
    link_to_modal("SimpleDialog", "http://www.google.de", :id => 1, :remote => true).should \
      eq('<a href="http://www.google.de" id="1" rel="modal:open:ajaxpost">SimpleDialog</a>')
  end

  it "supports block for default link" do
    link = link_to_modal("http://www.google.de", :id => 1) do
      "SimpleDialog"
    end

    link.should eq('<a href="http://www.google.de" id="1" rel="modal:open">SimpleDialog</a>')
  end

  it "supports block for AJAX link" do
    link = link_to_modal("http://www.google.de", :id => 1, :remote => true) do
      "SimpleDialog"
    end

    link.should eq('<a href="http://www.google.de" id="1" rel="modal:open:ajaxpost">SimpleDialog</a>')
  end

  it "supports block for complex AJAX link" do
    link = link_to_modal("http://www.google.de", :id => 1, :remote => true) do
      content_tag(:div) do
        content_tag(:p) do
          "SimpleDialog"
        end
      end
    end

    link.should eq('<a href="http://www.google.de" id="1" rel="modal:open:ajaxpost"><div><p>SimpleDialog</p></div></a>')
  end

  it "does not crash with only two paraemters" do
    link_to_modal('New User Modal', "http://google.de").should_not be_nil
  end
end
