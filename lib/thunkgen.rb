
require File.join(File.dirname(__FILE__), "printer.rb")
require File.join(File.dirname(__FILE__), "paragraph_factory.rb")

printer = Printer.new
paragraph_factory = ParagraphFactory.new

#paragraphs
(rand(5) + 2).times do
  print printer.build_sentences(paragraph_factory.get_paragraph.get_phrases)
  print "\n\n"
end

#always print a bait at the end
print printer.build_sentences(paragraph_factory.get_bait.get_phrases)
print "\n\nthunk\n"




