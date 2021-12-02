require "./spec_helper"

describe ImageToHtml do
  describe "#run" do
    expected = ImageToHtml::Html.new(
      ImageToHtml::Image.new(
        Path["./spec/resources/hello.jpg"]
      )
    ).to_s

    context "when given a String" do
      it "generates a HTML page for the image" do
        ImageToHtml.run("./spec/resources/hello.jpg").should eq(expected)
      end
    end

    context "when given a Path" do
      it "generates a HTML page for the image" do
        ImageToHtml.run(Path["./spec/resources/hello.jpg"]).should eq(expected)
      end
    end
  end
end

