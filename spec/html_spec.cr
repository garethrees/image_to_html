require "./spec_helper"

describe ImageToHtml::Html do
  image = ImageToHtml::Image.new(Path["./spec/resources/hello.jpg"])
  subject = ImageToHtml::Html.new(image)

  describe "#to_s" do
    it "generates a HTML document for the image" do
      subject.to_s.should eq(<<-HTML)
      <html>
        <head>
          <meta charset="UTF-8">
          <meta name="generator" content="garethrees/image_to_html">
          <title>hello.jpg</title>
        </head>
        <body>
          <div>
            <img src="#{image.real_path}">
          </div>
          <br>
          <div>
            <tt><a href="file://#{image.real_path}">#{image.real_path}</a></tt>
          </div>
          <div>
            <pre>hello</pre>
          </div>
        </body>
      </html>
      HTML
    end
  end
end
