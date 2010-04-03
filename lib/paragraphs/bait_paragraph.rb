
class BaitParagraph < Paragraph

  def get_phrases
    return [random_phrase(:jabber), random_phrase(:baits)]
  end

end