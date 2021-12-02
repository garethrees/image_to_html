module ImageToHtml
  class Html
    def initialize(image : Image)
      @image = image
    end

    def to_s
      <<-HTML
      <html>
        <head>
          <meta charset="UTF-8">
          <meta name="generator" content="garethrees/image_to_html">
          <title>#{image.filename}</title>
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
            <pre>#{image.text}</pre>
          </div>
        </body>
      </html>
      HTML
    end

    protected def image
      @image
    end
  end
end
