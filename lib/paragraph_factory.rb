
require File.join(File.dirname(__FILE__), 'paragraphs', 'paragraph.rb')
require File.join(File.dirname(__FILE__), 'paragraphs', 'tech_paragraph.rb')
require File.join(File.dirname(__FILE__), 'paragraphs', 'jabber_paragraph.rb')
require File.join(File.dirname(__FILE__), 'paragraphs', 'bait_paragraph.rb')

class ParagraphFactory

  def initialize
    @data = {}
    @data[:tech]    = File.open(File.join(File.dirname(__FILE__), 'data', 'tech_buzz')).lines.to_a.map { |line| line.strip }
    @data[:linkers] = File.open(File.join(File.dirname(__FILE__), 'data', 'linkers')).lines.to_a.map { |line| line.strip }
    @data[:baits]   = File.open(File.join(File.dirname(__FILE__), 'data', 'baits')).lines.to_a.map { |line| line.strip }
    @data[:jabber]  = File.open(File.join(File.dirname(__FILE__), 'data', 'jabber')).lines.to_a.map { |line| line.strip }
  end

  def get_paragraph
    type = rand(3)
    return TechParagraph.new(@data)   if type == 0
    return JabberParagraph.new(@data) if type == 1
    return BaitParagraph.new(@data)   if type == 2
  end

  def get_bait
    return BaitParagraph.new(@data)
  end

end