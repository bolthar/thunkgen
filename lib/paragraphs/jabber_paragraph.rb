
class JabberParagraph < Paragraph

  def get_phrases
    phrases = []
    (rand(3) + 3).times do
      if rand(4) < 2
        phrases << random_phrase(:jabber)
      else
        phrases << random_phrase(:tech)
      end
    end
    phrases.insert(rand(phrases.length - 2) + 1, random_phrase(:linkers))
  end

end