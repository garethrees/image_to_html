require "./spec_helper"

describe ImageToHtml::Image do
  subject = ImageToHtml::Image.new(Path["./spec/resources/hello.jpg"])

  describe "#text" do
    it "extracts text from the image" do
      subject.text.should eq("hello")
    end
  end

  describe "#filename" do
    it "returns the filename of the image" do
      subject.filename.should eq("hello.jpg")
    end
  end

  describe "#real_path" do
    it "returns the full path to the image" do
      expected = Path["./spec/resources/hello.jpg"].expand
      subject.real_path.should eq(expected)
    end
  end
end
