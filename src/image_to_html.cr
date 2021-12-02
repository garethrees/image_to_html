require "./html"
require "./image"

# OCR an image and output HTML containing the image and its extracted text.
module ImageToHtml
  VERSION = "0.1.0"

  def self.run(path : Path)
    Html.new(Image.new(path)).to_s
  end

  def self.run(path : String)
    run(Path[path])
  end
end
