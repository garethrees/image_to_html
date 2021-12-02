require "path"
require "tesseract-ocr"

module ImageToHtml
  class Image
    def initialize(image_path : Path)
      @image_path = image_path
    end

    def text
      Tesseract::Ocr.read(real_path.to_s)
    end

    def filename
      real_path.basename
    end

    def real_path
      image_path.expand.to_native
    end

    protected def image_path
      @image_path
    end
  end
end
