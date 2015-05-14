require "spec_helper"
require "rails_helper"

describe Link do
  let(:link) {Link.new(:original => "www.example.com")}

  describe "create" do
    it "contains original url" do
      expect(link.original).to eq("www.example.com")
    end
    it "original must be required" do
      link = Link.new
      expect { (link.save!) }.to raise_error(
        ActiveRecord::RecordInvalid
      )
    end
  end

  describe "#to_param" do
    it "correctly changes id" do
      expect(link.to_param).to eq(link.id.to_i.to_s(36))
    end
  end

  describe "clicks" do
    it "starts at zero" do
      expect(link.clicks).to eq(0)
    end
  end
  describe "#increment" do
    before do
      link.increment
    end
    it "increments link clicks" do
      expect(link.clicks).to eq(1)
    end
  end
end
