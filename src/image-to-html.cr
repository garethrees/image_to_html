require "./image_to_html"

abort("Must specify an image to convert") if ARGV.empty?
abort("File does not exist") unless File.exists?(ARGV.first)

puts ImageToHtml.run(ARGV.first)
